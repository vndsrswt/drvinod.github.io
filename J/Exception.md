#Exception Handling

Java provides a neater, more structured alternative method for dealing with possible
errors that can occur while a program is running.

* Exceptions are things that are not supposed to occur
* The word “exception” is meant to be more general than “error”.
* Some exceptions (like division by zero) are avoidable through careful programming
* Some exceptions (like losing a network connection) are not avoidable or predictable
* Java allows programmers to define their own means of handling exceptions when they occur

Exception Handling is the mechanism to handle runtime malfunctions. We need to handle such exceptions to prevent abrupt termination of program. The term exception means exceptional condition, it is a problem that may arise during the execution of program. A bunch of things can lead to exceptions, including programmer error, hardware failures, files that need to be opened cannot be found, resource exhaustion etc.

##Exception

A Java Exception is an object that describes the exception that occurs in a program. When an exceptional events occurs in java, an exception is said to be thrown. The code that's responsible for doing something about the exception is called an exception handler.

##Exception class Hierarchy

All exception types are subclasses of class Throwable, which is at the top of exception class hierarchy.

![Exception](./images/Exception.jpg)



* Exception class is for exceptional conditions that program should catch. This class is extended to create user specific exception classes.
* RuntimeException is a subclass of Exception. Exceptions under this class are automatically defined for programs.

##Exception are categorized into 3 category.

* Checked Exception: The exception that can be predicted by the programmer.Example : File that need to be opened is not found. These type of exceptions must be checked at compile time.
* Unchecked Exception: Unchecked exceptions are the class that extends RuntimeException. Unchecked exception are ignored at compile time. Example : ArithmeticException, NullPointerException, Array Index out of Bound exception. Unchecked exceptions are checked at runtime.
* Error: Errors are typically ignored in code because you can rarely do anything about an error. Example : if stack overflow occurs, an error will arise. This type of error is not possible handle in code.

## Uncaught Exceptions

When we don't handle the Exceptions, they lead to unexpected program termination. Lets take an example for better understanding.

```java
class UncaughtException
{
public static void main(String args[])
{
int a = 0;
int b = 7/a; // Divide by zero, will lead to exception
}
}
```

This will lead to an exception at runtime, hence the Java run-time system will construct an exception and then throw it. As we don't have any mechanism for handling exception in the above program, hence the default handler will handle the exception and will print the details of the exception on the terminal.

![Exception Description](./images/Exception02.jpg)







## Finally Clause

* When exception is thrown control is transferred to method containing the catch block to handle the exception 
* Control does not return to procedure in which the exception was thrown unless it contains a finally clause
* The finally clause can be used to clean up the programming environment after the exceptions has been handled

**Finally clause Example**

```java
void n() 

{
	…
	try { … open window … p() … }
	catch (SomeException se) { … }
	finally { … close window … }
	…
}
void p() { … throw se … }
```



Introduction

An exception or exceptional event is a problem that arises during the execution of a program. When an Exception occurs the normal flow of the program is disrupted and the program/Application terminates abnormally, which is not recommended, therefore these exceptions are to be handled. An exception can occur for many different reasons, below given are some scenarios where exception occurs.

* A user has entered invalid data.
* A file that needs to be opened cannot be found.
* A network connection has been lost in the middle of communications or the JVM has run out of memory.

Some of these exceptions are caused by user error, others by programmer error, and others by
physical resources that have failed in some manner.
Based on these we have three categories of Exceptions you need to understand them to know how exception handling works in Java,

* **Checked exceptions:** A checked exception is an exception that occurs at the compile time, these are also called as compile time exceptions. These exceptions cannot simply be ignored at the time of compilation, the Programmer should take care of handle these exceptions.
* For example, if you use FileReader class in your program to read data from a file, if the file specified in its constructor doesn't exist, then an  FileNotFoundException occurs, and compiler prompts the programmer to handle the exception.

```java
import java.io.File;
import java.io.FileReader;
public class FilenotFound_Demo 

{
	public static void main(String args[])

	{
		File file=new File("E://file.txt");
		FileReader fr = new FileReader(file);
	}
}
```

If you try to compile the above program you will get exceptions as shown below.

FilenotFound_Demo.java:8: error: unreported exception FileNotFoundException; must be
caught or declared to be thrown
FileReader fr = new FileReader(file);
^
1 error

Note: Since the methods read and close of FileReader class throws IOException, you can observe
that compiler notifies to handle IOException, along with FileNotFoundException.
Unchecked exceptions: An Unchecked exception is an exception that occurs at the time of
execution, these are also called as Runtime Exceptions, these include programming bugs,
such as logic errors or improper use of an API. runtime exceptions are ignored at the time of
compilation.
For example, if you have declared an array of size 5 in your program, and trying to call the
6th element of the array then an ArrayIndexOutOfBoundsExceptionexception occurs.

## Questions

How to use handle the exception hierarchies?
How to use handle the exception methods?
How to use handle the runtime exceptions?
How to use handle the empty stack exception ?
How to use catch to handle the exception?
How to use catch to handle chained exception?
How to use handle the exception with overloaded methods ?
How to handle the checked exceptions?
How to pass arguments while throwing checked exception?
How to handle multiple exceptions divide by zero?
How to handle multiple exceptions Array out of bound?
How to print stack of the Exception?
How to use exceptions with thread?
How to create user defined Exception
