package com.yjh.system.action.prv;

import com.yjh.system.action.ActionBase;
import com.yjh.system.core.prv.PrvTranData;

public class PrvTranDataAction extends ActionBase<PrvTranData> {

	@Override
	public Class beanClazz() {
		return PrvTranData.class;
	}

	public PrvTranData getBean() {
		return _bean;
	}

	public void setBean(PrvTranData bean) {
		this._bean = bean;
	}

}
