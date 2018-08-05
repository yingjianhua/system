package com.yjh.system.bean;

import com.yjh.system.core.db.SessionFactory;
import com.yjh.system.mapper.SysUserMapper;

public class TestSysUser {
	public TestSysUser() {
		System.out.println("init");
	}

	public static void main(String[] args) {
		new TestSysUser(){{a();}};
		Object o = SessionFactory.currentSession().selectOne("sys.loadSysUser", 1);
		SysUserMapper mapper =SessionFactory.currentSession().getMapper(SysUserMapper.class);
		System.out.println(mapper.loadSysUser(1));
		System.out.println(o.getClass());
		System.out.println(o);
	}
	public void a() {
		System.out.println("a");
	}
}
