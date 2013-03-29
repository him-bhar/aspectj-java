This is a project for a simple aspectj in java without any other supporting frameworks. like spring

To have support for aspectj in eclipse, you will need to download the AJDT for that particular eclipse version from eclipse marketplace.

When testing with main or test cases, Here it will be just the response from main method, but when running goal mvn test or mvn install the aspect will run

###############################################################################################
Was having trouble executing the jar using "java -jar aspectj-sample-1.0.0-SNAPSHOT", was getting

Exception in thread "main" java.lang.NoClassDefFoundError: org/aspectj/lang/NoAspectBoundException
        at com.himanshu.sample.main.HelloWorld.testfunc(HelloWorld.java:28)
        at com.himanshu.sample.main.HelloWorld.main(HelloWorld.java:23)
Caused by: java.lang.ClassNotFoundException: org.aspectj.lang.NoAspectBoundException
        at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
        at java.net.URLClassLoader$1.run(URLClassLoader.java:355)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:354)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:423)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:356)
        ... 2 more

The issue was basically to the dependency jar was not coming up in classpath using -classpath option.

Like say: I move my jar to lib directory in target folder, so my jar is now in: target/lib/aspectj-sample-1.0.0-SNAPSHOT

and the aspectjrt-1.7.2.jar is also present in lib folder like:

target
|
|-lib
   |
   |-aspectj-sample-1.0.0-SNAPSHOT
   |-aspectjrt-1.7.2.jar

But java -jar aspectj-sample-1.0.0-SNAPSHOT didn't work still got NoClassDefFoundError.

$$$$$$$$$$$$$$$$$$$$$$$$$$$$     SOLUTION    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$
In order to make this work do the following:

Update classpath to include both the jars and give the name of Main Class to execute:

C:\aspectj-java\target\lib>java -classpath ..\aspectj-sample-1.0-SNAPSHOT.jar;lib\aspectjrt-1.7.2.jar com.himanshu.sample.main.HelloWorld

>>>output<<<
Hello World
Inside testfunc
Hello from testfuncPointcut() AspectJ pointcut
Hello from mainMethod() AspectJ pointcut

###############################################################################################