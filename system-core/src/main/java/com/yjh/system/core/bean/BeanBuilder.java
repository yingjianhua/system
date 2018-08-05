package com.yjh.system.core.bean;

import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.Statement;

import com.yjh.system.core.db.DbPool;
import com.yjh.system.core.db.Query;
import com.yjh.system.core.orm.SqlBuilder;


public class BeanBuilder {
	private Bean bean;
	private BeanBuilder(Bean bean) {
		this.bean = bean;
	}
	public static BeanBuilder build(Bean bean) {
		return new BeanBuilder(bean);
	}

	public BeanBuilder buildJavaFile() {
		return this;
	};
	public BeanBuilder buildTable() {
		Class clazz = bean.getClass();
		String tableName = SqlBuilder.getTableName(clazz);
		System.out.println(tableName);
		try {
			DatabaseMetaData dbmd = DbPool.getInstance().getCurrentConnection().getMetaData();
			ResultSet rs = dbmd.getTables(null, null, tableName, null); // 检索表名为table_code的信息
			do {
				if (rs.next()) { // 判断存在相同的表名
					rs.close();
					int count = ((Number) Query.queryOneRow(SqlBuilder.hasRecordSql(clazz))[0]).intValue();
					if (count > 0) {
						System.err.println("表[" + tableName + "]-->已存在!");
						break;
					}
					Query.execute(SqlBuilder.dropTableSql(clazz));
					System.out.println("删除表[" + tableName + "]-->成功!");
				} 
				Query.execute(SqlBuilder.createTableSql(clazz));
				System.out.println("建表[" + tableName + "]-->成功!");
			}while(false);
			
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return this;
		}
	}
}
