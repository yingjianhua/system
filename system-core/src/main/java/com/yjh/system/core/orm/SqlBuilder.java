package com.yjh.system.core.orm;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;
import java.util.HashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.yjh.system.core.bean.Bean;

public class SqlBuilder {
	public static final HashMap<Class, String> _mysqlHm = new HashMap();
	static {
		_mysqlHm.put(byte.class, "TINYINT");
		_mysqlHm.put(Byte.class, "TINYINT");
		_mysqlHm.put(boolean.class, "TINYINT");
		_mysqlHm.put(Boolean.class, "TINYINT");
		_mysqlHm.put(double.class, "DOUBLE");
		_mysqlHm.put(Double.class, "DOUBLE");
		_mysqlHm.put(char.class, "CHAR");
		_mysqlHm.put(Character.class, "CHAR");
		_mysqlHm.put(short.class, "SMALLINT");
		_mysqlHm.put(Short.class, "SMALLINT");
		_mysqlHm.put(int.class, "INT");
		_mysqlHm.put(Integer.class, "INT");
		_mysqlHm.put(long.class, "BIGINT");
		_mysqlHm.put(Long.class, "BIGINT");
		_mysqlHm.put(BigDecimal.class, "DECIMAL");
		_mysqlHm.put(String.class, "VARCHAR");
		_mysqlHm.put(LocalDate.class, "DATE");
		_mysqlHm.put(Date.class, "DATE");
		_mysqlHm.put(LocalTime.class, "DATETIME");
	}

	public static <V extends Bean> String hasRecordSql(Class<V> clazz) {
		return "SELECT count(*) FROM " + getTableName(clazz);
	}
	public static <V extends Bean> String dropTableSql(Class<V> clazz) throws Exception {
		return "DROP TABLE " + getTableName(clazz);
	}
	public static <V extends Bean> String getTableName(Class<V> clazz) {
		Table tb = (Table) clazz.getAnnotation(Table.class);
		return tb == null ? tranFieldToLineLower(clazz.getSimpleName()) : tb.name();
	}

	public static <V extends Bean> String createTableSql(Class<V> clazz) throws Exception {
		if (clazz.getAnnotation(Entity.class) == null)
			throw new IllegalAccessError(clazz.getSimpleName() + " is not entity");
		StringBuilder buf = new StringBuilder();
		Table tb = (Table) clazz.getAnnotation(Table.class);
		buf.append("CREATE TABLE IF NOT EXISTS " + getTableName(clazz) + "(");
		for (Field field : clazz.getDeclaredFields()) {
			Column c = field.getAnnotation(Column.class);
			buf.append(dbOutFldSql(field));
		}
		for (Field field : clazz.getDeclaredFields()) {
			if (field.getAnnotation(Id.class) != null) {
				Column c = field.getAnnotation(Column.class);
				buf.append("PRIMARY KEY ( " + (c == null ? field.getName() : c.name()) + " ),");
				break;
			}
		}
		do {
			if (tb == null)
				break;
			Index[] indexs = tb.indexes();
			if (indexs == null)
				break;
			for (int i = 0; i < indexs.length; i++) {
				if (indexs[i].unique())
					buf.append("UNIQUE ");
				buf.append("INDEX (");
				buf.append(indexs[i].columnList() + " ASC,");
				buf.delete(buf.length() - 1, buf.length());
				buf.append("),");
			}
		} while (false);
		buf.delete(buf.length() - 1, buf.length());
		buf.append(") " + "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4");
		return buf.toString();
	}

	private static String dbOutFldSql(Field field) {
		StringBuilder buf = new StringBuilder();
		do {
			if (field.getAnnotation(Transient.class) != null)
				break;
			Column c = field.getAnnotation(Column.class);
			buf.append((c == null ? field.getName() : c.name()) + " ");
			if (c != null && !c.columnDefinition().equals("")) {
				buf.append(c.columnDefinition());
				break;
			}
			if (!_mysqlHm.containsKey(field.getType()))
				throw new IllegalArgumentException("[" + field.getType().getName() + "]类型不能映射到数据库字段");
			String type = _mysqlHm.get(field.getType());
			if (type.equals("VARCHAR") && c != null && c.length() > 65535)
				type = "TEXT";
			buf.append(type);
			if(type.equals("VARCHAR") && c == null) {
				buf.append("(255)");
			}
			if (c == null)
				break;
			if (c.length() > 0) {
				buf.append("(" + c.length());
				if (c.scale() > 0)
					buf.append("," + c.scale());
				buf.append(")");
			}
			// 空值标志
			if (!c.nullable())
				buf.append(" NOT");
			buf.append(" NULL");
			GeneratedValue gv = field.getAnnotation(GeneratedValue.class);
			if (gv != null && gv.strategy().equals("IDENTITY")) // 自增
				buf.append(" auto_increment");
		} while (false);
		buf.append(",");
		return buf.toString();
	}
	/**
	 * 将首字均小写，其它字的首字符大写的字符串转化成带下划线全部小写的字符串， 如：tranCode 将转成 tran_code
	 * 
	 * @param fieldCode
	 *          要转换的字符串
	 * @return 结果
	 */
	private static String tranFieldToLineLower(String fieldCode) {
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < fieldCode.length(); i++) {
			if (Character.isUpperCase(fieldCode.charAt(i)) && i != 0)
				buf.append("_");
			buf.append(fieldCode.charAt(i));
		}
		return buf.toString().toLowerCase();
	}
}
