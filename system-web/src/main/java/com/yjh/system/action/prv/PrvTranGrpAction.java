package com.yjh.system.action.prv;

import com.yjh.system.action.ActionBase;
import com.yjh.system.core.prv.PrvTranGrp;

public class PrvTranGrpAction extends ActionBase<PrvTranGrp> {

	@Override
	public Class beanClazz() {
		return PrvTranGrp.class;
	}

	public PrvTranGrp getBean() {
		return _bean;
	}

	public void setBean(PrvTranGrp bean) {
		this._bean = bean;
	}

}
