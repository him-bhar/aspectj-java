package com.himanshu.sample.aspect.stubs;

public class HelloAspect {
  public static void main(String[] args) {
    System.out.println("Main method");
    HelloAspect ha = new HelloAspect();
    ha.testFunc();
  }
  
  private void testFunc() {
    System.out.println("Test func");
  }
}
