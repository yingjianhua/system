package com.yjh.system.core.db;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.yjh.system.core.log.Log;

public class Query {
	private static final Log LOG= new Log(Query.class);
	//检索的最大记录数
	public static final int FETCH_SIZE = 500;
	
	public static void execute(String sql) throws SQLException {
		Statement stmt = null;
		try {
			stmt = DbPool.getInstance().getCurrentConnection().createStatement();
			stmt.execute(sql);
		} catch (Exception e) {
			throw LOG.err("oneRowNotFound", "执行SQL语句错误【{0}】!", sql);
		} finally {
			stmt.close();
		}
	}
	public static Object[] queryOneRow(String sql, Serializable... paras) {
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			stmt = DbPool.getInstance().getCurrentConnection().prepareStatement(sql);
			stmt.setFetchSize(FETCH_SIZE);
			setParams(stmt, paras);
			rs = stmt.executeQuery();
			if (!rs.next())
				throw LOG.err("oneRowNotFound", "单一记录没找到【{0}】!", sql);
			return resultSetToObjs(rs);
		} catch (Exception e) {
			throw LOG.err(e, "executeQueryOneRow", "取数据库记录时出错【{0}】!");
		} finally {
			DbPool.close(stmt, rs);
		}
	}
	public final static void setParams(PreparedStatement stmt, Serializable... vals) throws SQLException {
		for (int i = 1; i < vals.length; i++) {
			stmt.setObject(i, vals[i]);
		}
	}
	public static Object[] resultSetToObjs(ResultSet rs) throws SQLException {
		Object[] d = new Object[rs.getMetaData().getColumnCount()];
		for (int i = 1; i <= d.length; i++) {
			d[i - 1] = rs.getObject(i);
		}
		return d;
	}
}
