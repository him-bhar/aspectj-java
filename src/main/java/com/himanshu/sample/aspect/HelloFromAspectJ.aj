package com.himanshu.sample.aspect;

public aspect HelloFromAspectJ {

	pointcut mainMethod() : execution(public static void main(String[]));

	after() returning : mainMethod() {
		System.out.println("Hello from AspectJ");
	}
}