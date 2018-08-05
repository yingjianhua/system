package com.yjh.system.action.sys;

import com.yjh.system.action.ActionBase;
import com.yjh.system.core.sys.SysCom;
import com.yjh.system.core.sys.SysOrg;
import com.yjh.system.core.sys.SysOrgDAO;
import com.yjh.system.core.sys.SysSeq;
import com.yjh.system.core.sys.SysTable;
import com.yjh.system.pub.Str;
import com.yjh.system.pub.bean.Bean;

import java.util.Date;

import org.json.JSONObject;

public class SysSeqAction extends ActionBase<SysSeq> {
	public SysTable _one;

	@Override
	public Class beanClazz() {
		return SysSeq.class;
	}
	
	public SysSeq getBean() {
		return _bean;
	}

	public void setBean(SysSeq bean) {
		this._bean = bean;
	}
	
	public SysTable getOne() {
		return _one;
	}

	public void setOne(SysTable one) {
		_one = one;
	}

	@Override
	public String orderBy() {
		return " ORDER BY PKEY";
	}

	//加入一对一关联表字段的显示
	public JSONObject crtJsonExt(JSONObject json, Bean bean, String pref) throws Exception{
		SysTable table = ((SysSeq)bean).gtSysTable();
		String one = "";
		if (Str.isEmpty(pref) == false)
			one = "one.";
		json.put(one + SysTable.T.CODE.getFld().getCode(), table.getCode());
		json.put(one + SysTable.T.NAME.getFld().getCode(), table.getName());
	  return json;
	}
	
}
