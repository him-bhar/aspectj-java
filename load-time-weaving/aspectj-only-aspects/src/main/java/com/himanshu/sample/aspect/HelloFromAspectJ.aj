package com.himanshu.sample.aspect;

public aspect HelloFromAspectJ {

	pointcut mainMethod() : execution(public static void main(String[]));

	pointcut testfuncPointcut() : execution(* com.himanshu.sample.aspect.stubs.HelloAspect.*(..));

	after() returning : mainMethod() {
		System.out.println("Hello from mainMethod() AspectJ pointcut");
	}

	after() returning : testfuncPointcut() {
		System.out.println("Hello from testfuncPointcut() AspectJ pointcut");
	}
}