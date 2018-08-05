package com.yjh.system.core.orm;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.yjh.system.core.bean.Bean;

public class BeanResolver {

	public static <V extends Bean> Table resolveBean(Class<V> clazz) {
		if (clazz.getAnnotation(Entity.class) == null)
			throw new IllegalAccessError(clazz.getSimpleName() + " is not entity");
		StringBuilder buf = new StringBuilder();
		Table tb = (Table) clazz.getAnnotation(Table.class);
		buf.append("CREATE TABLE IF NOT EXISTS " + getTableName(clazz) + "(");
		for (Field field : clazz.getDeclaredFields()) {
			javax.persistence.Column c = field.getAnnotation(javax.persistence.Column.class);
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
	public static <V extends Bean> com.yjh.system.core.orm.Table getTable(Class<V> clazz) {
		if (clazz.getAnnotation(Entity.class) == null)
			throw new IllegalAccessError(clazz.getSimpleName() + " is not entity");
		Table tb = (Table) clazz.getAnnotation(Table.class);
		com.yjh.system.core.orm.Table table = new com.yjh.system.core.orm.Table();
		if(tb == null|| tb.name().equals(""))
			table.setName(clazz.getSimpleName());
		else
			table.setName(tb.name());
		return table;
	}
	public static <V extends Bean> Column[] getColumns(Class<V> clazz) {
		List<Column> columns = new ArrayList<>();
		for (Field field : clazz.getDeclaredFields()) {
			StringBuilder buf = new StringBuilder();
			do {
				if (field.getAnnotation(Transient.class) != null)
					break;
				Column column = new Column();
				columns.add(column);
				javax.persistence.Column c = field.getAnnotation(javax.persistence.Column.class);
				if(c==null||c.name().equals(""))
					column.setName(field.getName());
				else
					column.setName(c.name());
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
	}
	public static <V extends Bean> Column getPrimaryKey(Class<V> clazz) {
		for (Field field : clazz.getDeclaredFields()) {
			if (field.getAnnotation(Id.class) != null) {
				javax.persistence.Column c = field.getAnnotation(javax.persistence.Column.class);
				buf.append("PRIMARY KEY ( " + (c == null ? field.getName() : c.name()) + " ),");
				break;
			}
		}
	}
}
