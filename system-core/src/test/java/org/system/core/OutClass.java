package org.system.core;

public class OutClass {
	static {
		System.out.println("OutClass static");
	}
	{
		System.out.println("OutClass block");
	}

	public static class InClass{
		static {
			System.out.println("InClass static");
		}
		{
			System.out.println("InClass block");
		}
	}
}
