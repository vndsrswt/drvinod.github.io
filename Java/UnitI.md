# Unit I

> An overview of Java: Object oriented programming, Two paradigms, abstraction, the, OOP principles, Java class  libraries, variables, arrays, Data types and casting, Operators, operator precedence, Control statements. 

# Introduction of Java

Java is one of the world's most important and widely used computer languages, and it has held this distinction for many years. Unlike some other computer languages whose influence has weared with passage of time, while java's has grown. Java is related to C++, which is a direct descendant of C. Much of the character of Java is inherited from these two languages. From C, Java derives its syntax. Many of Java’s object- oriented features were influenced by C++. In fact, several of Java’s defining characteristics come from—or are responses to—its predecessors. Till today it is the first and best choice for developing console/web-based applications.

#Evolution of Java, Creation of Java, History of Java

JAVA is a distributed technology developed by James Gosling, Patric Naugton, etc., at Sun Micro System has released lot of rules for JAVA and those rules are implemented by JavaSoft Inc, USA (which is the software division of Sun Micro System) in the year 1990. The original name of JAVA is OAK (which is a tree name). In the year 1995, OAK was revised and developed software called JAVA (which is a coffee seed name). 

James Ghosling, Patrick Naughton, Mike Sheridan initiated the Java language project in June 1991 at Sun Microsystems Inc. for use in one of his many set-top box projects. It took 18 months to develop the first working version. 

Thelanguage, initially called Oak after an oak tree that stood outside Gosling's office, also went by the name Green and ended up later being renamed as Java, from a list of random words.

Java was initially launched as Java 1.0 as core component of Sun Microsystems’ Java platform. Sun released the first public implementation as Java 1.0 in 1995. It promised Write Once, Run Anywhere (WORA), providing no-cost run-times on popular platforms. but soon after its initial release, Java 1.1 was launched. Java 1.1 redefined event handling, new library elements were added.

* In Java 1.2 Swing and Collection framework was added and suspend() , resume() and stop() methods were deprecated from Thread class.

No major changes were made into Java 1.3 but the next release that was Java 1.4 contained several important

changes.Keyword assert , chained exceptions and channel based I/O System was introduced.

 Java 1.5 was called J2SE 5, it added following major new features:

·        Generics

·        Annotations

·        Autoboxingand autounboxing

·        Enumerations

·        For-each Loop

·        Varargs

·        Static Import

·        Formatted I/O

·        Concurrency utilities

On 13 November 2006, Sun released much of Java as free and open source software under the terms of the GNU General Public License (GPL). 

On 8 May 2007, Sun finished the process, making all of Java's core code free andopen-source, aside from a small portion of code to which Sun did not hold the copyright. 

December 2008, the latest release of the Java Standard Edition is 6 (J2SE). With the advancement of Java and its widespread popularity, multiple configurations were built to suite various types of platforms. Ex: J2EE for

Enterprise Applications, J2ME for Mobile Applications.

 Nextmajor release was Java SE 7 which included many new changes like :

·        NowString can be used to control Swith statement.

·        MultiCatch Exception

·        try-with-resourcestatement

·        BinaryInteger Literals

·        Underscorein numeric literals.





JAVA released to the market in three categories 

* J2SE (JAVA 2 Standard Edition), 
* J2EE (JAVA 2 Enterprise Edition) and 
* J2ME (JAVA 2 Micro/Mobile Edition). 

1. **J2SE** is basically used for developing client side applications/programs. 
2. J2EE is used for developing server side applications/programs. 
3. J2ME is used for developing Mobile/PDA applications/programs

If you exchange the data between client and server programs (J2SE and J2EE), by default JAVA is having on internal support with a protocol called http.

J2ME is used for developing mobile applications and lower/system level applications. To develop J2ME applications we must use a protocol called WAP (Wireless Applications Protocol).

# Features of Java

The prime reason behind creation of Java was to bring portability and security feature into a computer language. Beside these two major features, there were many other features that played an important role in moulding out the final form of this outstanding language. 

Those features are :

1. Simple

2. Platform independent

3. Architectural neutral

4. Portable

5. Multi threading

6. Distributed

7. Networked

8. Robust

9. Dynamic

10. Secured

11. High performance

12. Interpreted

13. Object Oriented Programming Language

## Simple
JAVA is simple because of the following factors: 

1. JAVA is free from pointers hence we can achieve less development time and less execution time [whenever we write a JAVA program we write without pointers and internally it is converted into the equivalent pointer program]. 
2. Rich set of API (application protocol interface) is available to develop any complex application. 
3. The software JAVA contains a program called garbage collector which is always used to collect unreferenced (unused) memory location for improving performance of a JAVA program. [Garbage collector is the system JAVA program which runs in the background along with regular JAVA program to collect unreferenced memory locations by running at periodical interval of times for improving performance of JAVA applications. 
4. JAVA contains user friendly syntax’s for developing JAVA applications.

## Platform Independent

A program or technology is said to be platform independent if and only if which can run on all available operating systems. 

Unlike many other programming languages including C and C++, when Java is compiled, it is not compiled into platform specific machine, rather into platform independent byte code. This byte code is distributed over the web and interpreted by virtual Machine (JVM) on whichever platform it is being run. On compilation Java program is compiled into bytecode. This bytecode is platform independent and can be run on any machine, plus this bytecode format also provide security. Any machine with Java Runtime Environment can run Java Programs.

The languages like C, Cpp are treated as platform dependent languages since these languages are taking various amount of memory spaces on various operating systems [the operating system dos understands everything in the form of its native format called Mozart (MZ) whereas the operating system Unix understands everything in its negative format called embedded linking format (elf). When we write a C or Cpp program on dos operating and if we try to transfer that program to Unix operating system, we are unable to execute since the format of these operating systems are different and more over the C, Cpp software does not contain any special programs which converts one format of one operating system to another format of other operating system]. 

The language like JAVA will have a common data types and the common memory spaces on all operating systems and the JAVA software contains the special programs which converts the format of one operating system to another format of other operating system. Hence JAVA language is treated as platform independent language.

[JAVA language is also treated as server independent language since the server side program can run on any of the server which is available in the real world (web server or application server). JAVA can retrieve or store the data in any one of the data base product which is available in rest world irrespective of their vendors (developers) hence JAVA language is product independent language. In order to deal with server side program from the client side, we can use C language client program, Cpp client program, DOT NET client program, etc. hence JAVA language is a simple, platform independent, server independent, data base/product independent and language independent programming language].

![PI](./images/pi.jpg)

![Platform Independent](./images/platformindependent.jpg)

##Architectural Neutral

Java compiler generates an architecture-neutral object file format, which makes the compiled code to be executable on many processors, with the presence of Java runtime system.

A language or technology is said to be processors in the real world. The language like JAVA can run on any of the processor irrespective of their vendor.

![Architecture Neutral](./images/ArchitectureNeutral.jpg)

## Portable

A portable language is one which can run on all operating systems and on all processors irrespective their architectures and providers. The language like C, Cpp are treated as nonportable languages whereas the language Java is called portable language

## Multi Threading

With Java's multithreaded feature, it is possible to write programs that can do many tasks simultaneously. This design feature allows developers to construct smoothly running interactive applications. Benefit of multithreading is that it utilizes same memory and other resources to execute multiple threads at the same time, like While typing, grammatical errors are checked along.

1. A flow of control is known as thread.
2. A multi threaded program is one in which there exist multiple flow of controls ie. threads.
3. A program is said to be multi threaded program programs if and only of there exist n number of subprograms. For each and every sub flow of controls. All such flow of controls are executing concurrently. such flow of controls is know as threads. Such type of applications is known as multi threading applications.
4. The languages like C, Cpp are treated as threads as single threaded modeling languages(STML). STML are those in which there exists single flows of control.
5. The languages like JAVA and DOT NET are traeted as multithreaded modeling languages(MTML). MTML are those in which there exist multiple flows of controls.
6. Whenever we write a java program there exists by default two threads. They are foreground/child thread  and background/main/parent thread.
7. A foreground thread is one which always executes user defined sub program. In a java program there is a possibility of existing n number of foregrounds threads.
8. A background thread is one which always monitors the status of foreground thread. In each and every JAVA program there exist only one background thread.
9. Hence background thread will be created first and later foreground thread will be created

![Multithreading](./images/mt.jpg)



##Distributed

Java is designed for the distributed environment of the internet. A service is a said to be a distributed service which runs in multiple servers and that service can be accessed by n number of clients across the globe. In order to develop we must require architecture called trusted network architecture.To develop these applications we require a technology called J2EE.

A service is a said to be a can be accessed by n number of clients across the globe. In order to develop applications we must require architecture called applications we require a technology called scale organizations. J2SE (Core JAVA) Notes is known as thread. multi threaded program is one in which there exists multiple flow of controls multi threaded program if and only of there exists n number of sub programs. For each and every sub-program there exists a separate flow of control are executing concurrently. Such flow of controls is known as type of applications is known as multi threading applications. The languages like C, Cpp are treated as threads as single threaded modeling languages (STML). SMTL are those in which there exists single flow of control. JAVA and DOT NET are treated as multi threaded modeling languages (MTML). MTML are those in which there exist multiple flows of controls Whenever we write a JAVA program there exists by default two threads foreground/child thread and background/main/parent thread. is one which always executes user defined sub-programs. In a program there is a possibility of existing n number of foreground threads is one which always monitors the status of foreground thread program there exists only one background thread. background thread will be created first and later foreground thread A service is a said to be a distributed service which runs in multiple servers by n number of clients across the globe. In order to develop we must require architecture called trusted network architecture. To develop these applications we require a technology called J2EE. Distributed applications are preferr Page 6 multiple flow of controls i.e., threads. if and only of there exists n number of sub- flow of control. All such is known as threads. Such single threaded modeling languages d modeling languages multiple flows of controls. two threads. They are programs. In a JAVA foreground threads. foreground thread. In each foreground thread will be created.

![Distributed](./images/distributed.jpg)

## Networked

In real world we have two types of networks. They are untrusted and trsuted networks. 

1. **Un-trusted networks** : A network is said to be untrusted network in which there exist n number of inter connected non-autonomous architecture. Untrusted network is also know as LAN. Using this network architecture , we develop centralized applications. A Centralized application is one which runs on single server and runs on single server and it can be access in limited graces. In order to develop centralized application we may use a technology called J2Se and these kinds of applications are preferred by small scale organization.

   2.**Trusted network:** A network is said to be trusted network in which there exist n number of interconnected autonomous architecture. Trusted network is also know as a WAN. Using this network, we can develop distributed applications. and it can be access in unlimited graces.  In order to develop distributed applications we may use a technology called J2EE and these kinds of applications are preferred by large scale organization.

   ![Network](./images/network.jpg)

## Dynamic

Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time.

## Portable

Being architectural-neutral and having no implementation dependent aspects of the specification makes Java portable. Compiler in Java is written in ANSI C with a clean portability boundary which is a POSIX subset. 

## High Performance

With the use of Just-In-Time compilers, Java enables high performance. 

## Interpreted

Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and lightweight process.

## Secure

With Java's secure feature, it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption.



## Object Oriented

In Java, everything is an Object. Java can be easily extended since it is based on the Object model. 



## Robust

Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking. Java makes an effort to eliminate error prone codes by emphasizing mainly on compile time error checking and runtime checking. But the main areas which Java improved were Memory Management and mishandled Exceptions by introducing automatic Garbage Collector and Exception Handling.



#Difference in C and Java

**J**ava is look like C but majordifference is object oriented concept and mechanism of define classes andobjects

| C                                        | Properties                    | Java                                     |
| ---------------------------------------- | ----------------------------- | ---------------------------------------- |
| C is procedural                          | **Programming**               | JAVA is  Object-Oriented                 |
| Sizeof, typedef,  struct, union          | **Keywords**                  | Don’t have                               |
| Auto, extern,  register, signed, unsigned | **Type modifiers**            | No                                       |
| C requires explicit  handling of pointers | **Pointer**                   | Not support explicit  pointers           |
| #define, #include                        | **Pre-processor directive**   | No pre-processor                         |
| C is a compiled  language.               | **Type of language**          | Java is an  Interpreted language         |
| C is a low-level  language               | **Levels**                    | JAVA is a high-level  language           |
| C uses the top-down  {sharp & smooth} approach | **Approach**                  | JAVA uses the  bottom-up {on the rocks} approach |
| User-Based Memory  Management in C.      | **Memory Management**         | Memory Management  with JAVA             |
| C does not support  overloading          | **Overloading**               | Method Overloading                       |
| errors & crashes  in C                   | **Error Handling**            | Exception Handling in  JAVA              |
| Allowed                                  | **Variable length arguments** | No variable-length  argument lists       |
| C requires local  variable declarations to be made at the beginning of a method or block | **Variable declaration**      | Java allows them  anywhere in a method or block |

#Difference in Java and C++

| Properties                | **C++**                                  | **Java**                                 |
| ------------------------- | ---------------------------------------- | ---------------------------------------- |
| platform independent      | C++ is depends upon  operating system machine**** | **Support**                              |
| Compiler and  interpreter | Compiler                                 | **Both**                                 |
| multiple  Inheritance     | Support                                  | Not Support                              |
| Operator  Overloading     | Support                                  | Not Support                              |
| template  class           | Support                                  | Not Support                              |
| Global  Variables         | Support                                  | Not Support                              |
| Preprocessor  Directive   | Support                                  | Not Support                              |
| Global Variables          | Support                                  | Not Support                              |
| Pointers                  | Support                                  | Not Support, Java  support restricted pointers |
| Thread                    | Not Support                              | Support                                  |
| Internet                  | Not Support                              | Support                                  |
| Function                  | Destructor function                      | finalized function                       |
| Function Parameter        | Call by Value and  Address               | Call By Value Only                       |

 

# C, C++ and Java

 

 

| **Aspects**                        | **C**                         | **C++**                       | **Java**                           |
| ---------------------------------- | ----------------------------- | ----------------------------- | ---------------------------------- |
| **Developed Year**                 | 1972                          | 1979                          | 1991                               |
| **Developed By**                   | Dennis Ritchie                | Bjarne Stroustrup             | James Gosling                      |
| **Successor of**                   | BCPL                          | C                             | C(Syntax) & C++ (Structure)        |
| **Paradigms**                      | Procedural                    | Object Oriented               | Object Oriented                    |
| **Platform Dependency**            | Dependent                     | Dependent                     | Independent                        |
| **Keywords**                       | 32                            | 63                            | 50 defined (goto, const unusable)  |
| **Datatypes : union, structure**   | Supported                     | Supported                     | Not Supported                      |
| **Pre-processor directives**       | Supported (#include, #define) | Supported (#include, #define) | Not Supported                      |
| **Header files**                   | Supported                     | Supported                     | Use Packages (import)              |
| **Inheritance**                    | No Inheritance                | Supported                     | Multiple Inheritance not Supported |
| **Overloading**                    | No Overloading                | Supported                     | Operator Overloading not Supported |
| **Pointers**                       | Supported                     | Supported                     | No Pointers                        |
| **Code Translation**               | Compiled                      | Compiled                      | Interpreted                        |
| **Storage Allocation**             | Uses malloc, calloc           | Uses new , delete             | uses garbage collector             |
| **Multi-threading and Interfaces** | Not Supported                 | Not Supported                 | Supported                          |
| **Exception Handling**             | No Exception handling         | Supported                     | Supported                          |
| **Templates**                      | Not Supported                 | Supported                     | Not Supported                      |
| **Storage class: auto, extern**    | Supported                     | Supported                     | Not Supported                      |
| **Destructors**                    | No Constructor or Destructor  | Supported                     | Not Supported                      |
| **Database Connectivity**          | Not Supported                 | Not Supported                 | Supported                          |

 

 

# Application of Java

Java is widely used in every corner of world and of human life. Java is not only used in software’s but is also widely used in designing hardware controlling software components. There are more than 930 million JRE downloads each year and 3 billion mobile phones run java.

Following are some other usage of Java : 

1.	Developing Desktop Application
    2.Web Applications like LinkedIn 
    3.Mobile OS like Android 
    4.Embedded System 
    5.Robotics and games etc.




### How to create JAVA program

For creating java program you install jdk toolbox and configure properly according to system then use any ASCII text Editor and following steps. 

Create a MyFirstJavaProgram.java

·        Open notepad and add the code as above.

·        Save thefile as: MyFirstJavaProgram.java.

·        Open acommand prompt window and go o the directory where you saved the class. Assumeit's C:\.

·        Type 'javac MyFirstJavaProgram.java ' and press enter to compile your code. If thereare no errors in your code, the command prompt will take you to the nextline(Assumption : The path variable is set).

·        Now, type' java MyFirstJavaProgram ' to run your program.

·        You willbe able to see ' Hello World ' printed on the window.

```java
publicclass MyFirstJavaProgram
{

/* This is my first java program.

\* This will print 'Hello World' as the output

*/

public static void main(String[]args)

{

System.out.println("HelloWorld");// prints Hello World

}

}

//For Output
C:> javac MyFirstJavaProgram.java
C:> java MyFirstJavaProgram
HelloWorld
 
```
