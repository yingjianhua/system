package com.yjh.system.core.orm;

import java.lang.reflect.Field;

public class Column {

	private String name;
	private String dbType;
	private Class javaType;
	private int length;
	private int scale;
	private boolean notNull;
	private String remark;
	private String defaultValue;
	private boolean isId;
	
	public static Column build(Field field) {
		javax.persistence.Column c = field.getAnnotation(javax.persistence.Column.class);
		Column column = new Column();
		if(c == null)
			column.name = field.getName();
		else
			column.name = c.name();
		
		return null;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDbType() {
		return dbType;
	}
	public void setDbType(String dbType) {
		this.dbType = dbType;
	}
	public Class getJavaType() {
		return javaType;
	}
	public void setJavaType(Class javaType) {
		this.javaType = javaType;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getScale() {
		return scale;
	}
	public void setScale(int scale) {
		this.scale = scale;
	}
	public boolean isNotNull() {
		return notNull;
	}
	public void setNotNull(boolean notNull) {
		this.notNull = notNull;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getDefaultValue() {
		return defaultValue;
	}
	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}
	public boolean isId() {
		return isId;
	}
	public void setId(boolean isId) {
		this.isId = isId;
	}
}
