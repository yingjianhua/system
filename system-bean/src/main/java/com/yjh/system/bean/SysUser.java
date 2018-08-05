package com.yjh.system.bean;

public class SysUser {

	private int pkey;
	private String loginName;
	private String name;
	private String nickname;
	private byte loginState;
	private int org;
	private int dept;
	private String photo;
	private int tbObj;
	private short rowVersion;
	
	public int getPkey() {
		return pkey;
	}
	public void setPkey(int pkey) {
		this.pkey = pkey;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public byte getLoginState() {
		return loginState;
	}
	public void setLoginState(byte loginState) {
		this.loginState = loginState;
	}
	public int getOrg() {
		return org;
	}
	public void setOrg(int org) {
		this.org = org;
	}
	public int getDept() {
		return dept;
	}
	public void setDept(int dept) {
		this.dept = dept;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getTbObj() {
		return tbObj;
	}
	public void setTbObj(int tbObj) {
		this.tbObj = tbObj;
	}
	public short getRowVersion() {
		return rowVersion;
	}
	public void setRowVersion(short rowVersion) {
		this.rowVersion = rowVersion;
	}
	@Override
	public String toString() {
		return "SysUser [pkey=" + pkey + ", loginName=" + loginName + ", name=" + name + ", nickname=" + nickname
				+ ", loginState=" + loginState + ", org=" + org + ", dept=" + dept + ", photo=" + photo + ", tbObj="
				+ tbObj + ", rowVersion=" + rowVersion + "]";
	}
}
