package com.yjh.system.core.db;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.yjh.system.core.log.Log;
import com.yjh.system.core.log.PubInfs.IMsg;

import snaq.db.ConnectionPoolManager;

public class DbPool {
	private static final Log LOG = new Log(DbPool.class);
	public enum Msgs implements IMsg {
		initBegin("DbPool初始化开始"),
		initSuccess("DbPool初始化成功"),
		initFailure("DbPool初始化失败");
		private String _msg;
		private Msgs(String msg) { _msg=msg; }
		public String getMsg() {return _msg; }
	}

	/**
	 * 数据库类型，如mysql，db2，oracle
	 */
	public final DbType dbType;
	private static ConnectionPoolManager poolManager;
	private static final String POOLNAME = "irille";
	private static DbPool instance = null;
	private ThreadLocal<Connection> currentConnection = new ThreadLocal<Connection>();

	public static DbPool getInstance() {
		if (instance == null)
			instance = new DbPool();
		return instance;
	}

	// 根据配置初始化连接池
	private DbPool() {
		Properties p = new Properties();
		try {
			LOG.info(Msgs.initBegin);
			URL url = DbPool.class.getResource("/db.properties");
			InputStream in = url.openStream();
			p.load(in);
			dbType = DbType.valueOf(p.getProperty("dbType"));
			poolManager = ConnectionPoolManager.getInstance(new File(url.getFile()));
			LOG.info(Msgs.initSuccess);
		} catch (IOException e) {
			throw LOG.err(Msgs.initFailure);
		}
	}
	public Connection getCurrentConnection() {
		Connection conn = currentConnection.get();
		if (conn == null) {
			conn = getConnection(POOLNAME);
			try {
				conn.setAutoCommit(false);
			} catch (SQLException e) {
				LOG.err("setCommit", "关闭自动提交出错", e);
			}
			currentConnection.set(conn);
			return conn;
		}
		return conn;
	}
	// 从指定连接池内取CONN对象
	private Connection getConnection(String poolName) {
		Connection connection;
		try {
			connection = poolManager.getConnection(poolName);
		} catch (SQLException e) { 
			throw LOG.err(e, "getConn", "连接池取对象出错");
		}
		return connection;
	}

	// 清空连接池
	public void release(String poolName) {
		if (poolManager.getPool(poolName) != null)
			poolManager.getPool(poolName).release();
	}

	public void releaseAll() {
		poolManager.release();
	}

	// 每次通信最后必须调用关闭连接
	public void removeConn() {
		Connection conn = currentConnection.get();
		if (conn != null) {
			currentConnection.remove();
			try {
				if (conn.isClosed() == false)
					conn.close();
			} catch (SQLException e) {
				throw LOG.err(e, "closeConn", "关闭连接对象出错");
			}
		}
	}

	public static final void close(PreparedStatement stmt, ResultSet rs) {
		close(rs);
		close(stmt);
	}

	public static final void close(Statement stmt, ResultSet rs) {
		close(rs);
		close(stmt);
	}

	public static final void close(Statement stmt) {
		try {
			if (stmt != null)
				stmt.close();
		} catch (Exception e) {
			throw LOG.err(e, "closeStmt", "关闭对象【Statement】出错");
		}
	}

	public static final void close(PreparedStatement stmt) {
		try {
			if (stmt != null)
				stmt.close();
		} catch (Exception e) {
			throw LOG.err(e, "closePreparedStatement", "关闭对象【PreparedStatement】出错");
		}
	}

	public static final void close(ResultSet rs) {
		try {
			if (rs != null)
				rs.close();
		} catch (Exception e) {
			throw LOG.err(e, "closeResultSet", "关闭对象【ResultSet】出错");
		}
	}
}
