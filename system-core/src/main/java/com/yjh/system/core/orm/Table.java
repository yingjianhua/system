package com.yjh.system.core.orm;

public class Table {

	private String name;
	private Column primaryKey;
	private Index[] indexs;
	private Column[] columns;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Column getPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(Column primaryKey) {
		this.primaryKey = primaryKey;
	}
	public Index[] getIndexs() {
		return indexs;
	}
	public void setIndexs(Index[] indexs) {
		this.indexs = indexs;
	}
	public Column[] getColumns() {
		return columns;
	}
	public void setColumns(Column[] columns) {
		this.columns = columns;
	}
}
