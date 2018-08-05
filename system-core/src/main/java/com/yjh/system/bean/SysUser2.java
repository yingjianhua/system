package com.yjh.system.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.yjh.system.core.bean.Bean;

@Entity
@Table
public class SysUser2 extends Bean{

	@Id
	@GeneratedValue
	private Integer pkey;
	private String name;
	
	public Integer getPkey() {
		return pkey;
	}
	public void setPkey(Integer pkey) {
		this.pkey = pkey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
