This is a module which simply, setup some java classes that can be used to interpect and test load time weaving via AspectJ without using spring framework.

No actual relationships between aspects and java code required.

In the lib folder in target, you will see. Few dependencies like aspectjrt, aspectjweaver. They are used for setting up an environment where Aspects can actually start intercepting.

    <b>aspectjrt</b> - aspectj runtime, must be present in classpath.
    <b>aspectjweaver</b> - required for load time weaving. Must be present in classpath and also loaded as a java agent. e.g. -javaagent:/path/to/aspectjweaver.jar


<b>How to run this module:</b>

    C:\Himanshu_Work\sources\Rnd\aspect_load_time_weaving_sample\aspectj-code-noaspect\target>java -javaagent:C:\Himanshu_Work\sources\Rnd\aspect_load_time_weaving_sample\aspectj-code-noaspect\target\lib\aspectjweaver-1.7.2.jar -classpath *;lib\* com.himanshu.sample.main.HelloWorld
    [AppClassLoader@18b4aac2] weaveinfo Join point 'method-execution(void com.himanshu.sample.main.HelloWorld.main(java.lang.String[]))' in Type 'com.himanshu.sample.main.HelloWorld' (HelloWorld.java:21) advised by around advice from 'com.himanshu.sample.aspect.LoggingAspect_2' (LoggingAspect_2.aj:11)
    [AppClassLoader@18b4aac2] weaveinfo Join point 'method-execution(void com.himanshu.sample.main.HelloWorld.testfunc())' in Type 'com.himanshu.sample.main.HelloWorld' (HelloWorld.java:26) advised by around advice from 'com.himanshu.sample.aspect.LoggingAspect_2' (LoggingAspect_2.aj:11)
    TESTING ASPECTS ENTER
    TESTING ASPECTS ENTER
    Inside testfunc
    log4j:WARN No appenders could be found for logger (com.himanshu.sample.aspect.LoggingAspect_2).
    log4j:WARN Please initialize the log4j system properly.
    log4j:WARN See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.
    TESTING ASPECTS
    TESTING ASPECTS

