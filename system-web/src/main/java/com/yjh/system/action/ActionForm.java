package com.yjh.system.action;

import com.yjh.system.pub.bean.Bean;
import com.yjh.system.pub.bean.BeanMain;
import com.yjh.system.pub.idu.IduApprove;
import com.yjh.system.pub.idu.IduInsLines;
import com.yjh.system.pub.idu.IduTally;
import com.yjh.system.pub.idu.IduUnTally;
import com.yjh.system.pub.idu.IduUnapprove;
import com.yjh.system.pub.idu.IduUpdLines;

import java.util.List;

public abstract class ActionForm<THIS extends BeanMain, LINE extends Bean> extends ActionBase<THIS> {

	public List<LINE> _listLine;

	@Override
	public THIS updRun() throws Exception {
		updBefore();
		IduUpdLines upd = (IduUpdLines) newUpd();
		upd.setB(_bean);
		upd.setLines(_listLine);
		upd.commit();
		updAfter();
		return (THIS) upd.getB();
	}

	@Override
	public THIS insRun() throws Exception {
		insBefore();
		IduInsLines ins = (IduInsLines) newIns();
		ins.setB(_bean);
		ins.setLines(_listLine);
		ins.commit();
		insAfter();
		return (THIS) ins.getB();
	}

	public void approve() throws Exception {
		IduApprove act = newApprove();
		act.setBKey(getPkey());
		act.commit();
		writeSuccess(act.getB());
	}

	public void unapprove() throws Exception {
		IduUnapprove act = newUnapprove();
		act.setBKey(getPkey());
		act.commit();
		writeSuccess(act.getB());
	}

	public void tally() throws Exception {
		IduTally act = newTally();
		act.setBKey(getPkey());
		act.commit();
		writeSuccess(act.getB());
	}

	public void untally() throws Exception {
		IduUnTally act = newUnTally();
		act.setBKey(getPkey());
		act.commit();
		writeSuccess(act.getB());
	}

	public final IduTally newTally() throws Exception {
		Class c;
		try {
			c = Class.forName(beanClazz().getName() + "DAO$DoTally");
		} catch (ClassNotFoundException e) {
			c = Class.forName("irille.pub.idu.IduBase$DoTally");
		}
		IduTally act = (IduTally) c.newInstance();
		act.setClazz(beanClazz());
		return act;
	}

	public final IduUnTally newUnTally() throws Exception {
		Class c;
		try {
			c = Class.forName(beanClazz().getName() + "DAO$UnTally");
		} catch (ClassNotFoundException e) {
			c = Class.forName("irille.pub.idu.IduBase$UnTally");
		}
		IduUnTally act = (IduUnTally) c.newInstance();
		act.setClazz(beanClazz());
		return act;
	}

}
