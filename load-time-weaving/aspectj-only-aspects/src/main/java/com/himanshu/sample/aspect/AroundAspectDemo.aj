package com.himanshu.sample.aspect;

public aspect AroundAspectDemo {

  pointcut testParticularPackagePointcut() : execution(* com.himanshu.sample.aspect.stubs.HelloAspect.*(..));
  pointcut testAllPointcut() : execution(* *(..));
  pointcut testSpecificPackagePointcut() : execution(* com.himanshu.*.*.*.*.*(..));
  pointcut testSpecificPackagePointcut2() : execution(* com.himanshu.sample2.*.*.*.*(..));

  Object around() : testParticularPackagePointcut() || testAllPointcut() {
    System.out.println("Entering from around OR related pointcuts (method name): "+ thisJoinPoint.getSignature());
    Object obj = proceed();
    System.out.println("Exiting from around OR related pointcuts (method name): "+ thisJoinPoint.getSignature());
    return obj;
  }
  
  Object around() : testSpecificPackagePointcut() && testSpecificPackagePointcut2() {
    System.out.println("Entering from around AND related pointcuts (method name): "+ thisJoinPoint.getSignature());
    Object obj = proceed();
    System.out.println("Exiting from around AND related pointcuts (method name): "+ thisJoinPoint.getSignature());
    return obj;
  }
  
}