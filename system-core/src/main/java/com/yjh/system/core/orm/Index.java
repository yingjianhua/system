package com.yjh.system.core.orm;

import java.util.Set;

public class Index {

	private String name;
	private Set<Column> columns;
	private boolean isUnique;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Column> getColumns() {
		return columns;
	}
	public void setColumns(Set<Column> columns) {
		this.columns = columns;
	}
	public boolean isUnique() {
		return isUnique;
	}
	public void setUnique(boolean isUnique) {
		this.isUnique = isUnique;
	}
}
