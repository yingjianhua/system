package com.yjh.system.action.sys;

import com.yjh.system.action.ActionBase;
import com.yjh.system.core.sys.SysTable;

public class SysTableAction extends ActionBase<SysTable> {

	@Override
	public Class beanClazz() {
		return SysTable.class;
	}

	public SysTable getBean() {
		return _bean;
	}

	public void setBean(SysTable bean) {
		this._bean = bean;
	}

}
