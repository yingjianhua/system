package com.yjh.system.action.sys;

import com.yjh.system.action.ActionBase;
import com.yjh.system.core.sys.SysCell;
import com.yjh.system.core.sys.SysDept;
import com.yjh.system.core.sys.SysOrg;
import com.yjh.system.pub.bean.Bean;
import com.yjh.system.pub.bean.CmbBill.T;

import org.json.JSONObject;

public class SysCellAction extends ActionBase<SysCell> {

	@Override
	public Class beanClazz() {
		return SysCell.class;
	}

	public SysCell getBean() {
		return _bean;
	}

	public void setBean(SysCell bean) {
		this._bean = bean;
	}

	@Override
	public String orderBy() {
		return " ORDER BY " + T.CODE.getFld().getCodeSqlField();
	}

}
