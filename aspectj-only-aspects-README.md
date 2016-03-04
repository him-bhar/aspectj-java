This module contains just the Aspects. (*.aj). You can used AJDT in eclipse to do development on the same (use the right AJDT version based on eclipse version).

In META-INF folder inside src/main/resources you will see an 'aop.xml'. This contains the meta information about aspects required by aspectjweaver to decide what aspects to load what source is it applicable on. But pointcuts will still be applicable on what is present in that aspect file (finer refinement).

Benefit of putting META-INF in resources is to ensure aop.xml gets packaged in the jar in META-INF folder.

When testing with main or test cases, Here it will be just the response from main method, but when running goal mvn test or mvn install the aspect will run

Do have a look at pom.xml, aspectj-maven-plugin

When building this module you will see this warning:
{code}
[INFO] --- aspectj-maven-plugin:1.3:compile (default) @ aspectj-only-aspects ---

[WARNING] bad version number found in C:\Himanshu_Work\repo_2\org\aspectj\aspectjrt\1.7.2\aspectjrt-1.7.2.jar expected 1.6.7 found 1.7.2
[WARNING] advice defined in com.himanshu.sample.aspect.LoggingAspect_2 has not been applied [Xlint:adviceDidNotMatch]
(...)
[INFO] --- aspectj-maven-plugin:1.3:test-compile (default) @ aspectj-only-aspects ---
[WARNING] bad version number found in C:\Himanshu_Work\repo_2\org\aspectj\aspectjrt\1.7.2\aspectjrt-1.7.2.jar expected 1.6.7 found 1.7.2
[WARNING] advice defined in com.himanshu.sample.aspect.LoggingAspect_2 has not been applied [Xlint:adviceDidNotMatch]
{code}
Don't be alarmed since there's no java code, on which aspects can latch themselves at compile time. Hence, throws this warning. But this will not cause any issue.
