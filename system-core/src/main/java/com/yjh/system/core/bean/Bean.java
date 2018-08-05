package com.yjh.system.core.bean;


import junit.framework.Test;
import junit.framework.TestResult;

public class Bean implements Test{

	

	@Override
	public int countTestCases() {
		BeanBuilder.build(this).buildJavaFile().buildTable();
		return 0;
	}
	@Override
	public final void run(TestResult result) {
	}
	public final void testCase() {
	}

}
