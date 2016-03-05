package com.himanshu.sample2.main.test;

import org.junit.Test;

import com.himanshu.sample.main.test.HelloWorldTest;

public class AndRelatedPointcutAdviceTest {
  //Here it will be just the response from main method, but when running goal mvn test or mvn install the aspect will run
  @Test
  public void testMain() {
    HelloWorldTest.main(new String[0]);
  }
  
  public static void main(String[] args) {
    System.out.println("Hello from main");
  }
}
