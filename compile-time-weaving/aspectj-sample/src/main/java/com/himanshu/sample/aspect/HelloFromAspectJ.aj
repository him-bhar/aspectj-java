package com.himanshu.sample.aspect;

public aspect HelloFromAspectJ {

	pointcut mainMethod() : execution(public static void main(String[]));

	pointcut testfuncPointcut() : execution(private * *(..));

	after() returning : mainMethod() {
		System.out.println("Hello from mainMethod() AspectJ pointcut");
	}

	after() returning : testfuncPointcut() {
		System.out.println("Hello from testfuncPointcut() AspectJ pointcut");
	}
	
	Object around() : testfuncPointcut() {
    System.out.println("Entering from around OR related pointcuts (method name): "+ thisJoinPoint.getSignature());
    Object obj = proceed();
    System.out.println("Exiting from around OR related pointcuts (method name): "+ thisJoinPoint.getSignature());
    return obj;
  }
}