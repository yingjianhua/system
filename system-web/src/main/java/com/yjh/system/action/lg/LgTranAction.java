package com.yjh.system.action.lg;

import com.yjh.system.action.ActionBase;
import com.yjh.system.core.lg.LgTran;

public class LgTranAction extends ActionBase<LgTran> {
	@Override
	public Class beanClazz() {
		return LgTran.class;
	}

	public LgTran getBean() {
		return _bean;
	}

	public void setBean(LgTran bean) {
		this._bean = bean;
	}

	public String orderBy() {
		return " ORDER BY " + LgTran.FLD_PKEY.getCodeSqlField() + " DESC";
	}
}
