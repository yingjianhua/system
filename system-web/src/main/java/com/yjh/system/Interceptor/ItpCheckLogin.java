package com.yjh.system.Interceptor;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.yjh.system.action.ActionBase;
import com.yjh.system.action.sys.SysUserAction;
import com.yjh.system.pub.svr.Env;
import com.yjh.system.pub.svr.LoginUserMsg;

public class ItpCheckLogin extends AbstractInterceptor {
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		// 确认Session中是否存在LOGIN
		Map session = actionInvocation.getInvocationContext().getSession();
		LoginUserMsg umsg = (LoginUserMsg) session.get(ActionBase.LOGIN);
		if (umsg != null) {
			// 这里缓存的线程级对象会在请求结束后在DBITP中释放
			Env.INST.initTran(umsg, actionInvocation.getProxy().getActionName());
			// 存在的情况下进行后续操作。
			return actionInvocation.invoke();
		} else {
			// 对LoginAction不做该项拦截
			Object action = actionInvocation.getAction();
			if (action instanceof SysUserAction)
				if (actionInvocation.getProxy().getActionName().equals("sys_SysUser_login") ||
						actionInvocation.getProxy().getActionName().equals("sys_SysUser_loginTest"))
					return actionInvocation.invoke();
			if (ignoreAction(actionInvocation.getProxy().getActionName()))
				return actionInvocation.invoke();
			// 否则终止后续操作
			ServletActionContext.getResponse().setHeader("sessionstatus", "timeout");
			return ActionBase.LOGIN;
		}
	}

	public boolean ignoreAction(String actionname) {
		return false;
	}

}
