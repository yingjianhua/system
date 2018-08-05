package com.yjh.system.core.bean;

import java.util.HashMap;
import java.util.Map;

import com.yjh.system.core.orm.Table;

public class BeanPool {

	/**
	 * 缓存bean对应的数据库表信息orm
	 */
	private static final Map<Class<Bean>, Table> bufMap= new HashMap<>();
	
}
