# Unit V

> Introduction to Applets : Applet Fundamentals, using paint method, basic of AWT

# Introduction

In JAVA we write two types of programs or applications. They are standalone applications and distributed applications.

1. A **standalone application** is one which runs in the context of local disk and whose result is not sharable. Every standalone application runs from command prompt and it contains main method along with System.out.println statements.
2. A **distributed application** is one which runs in the context of browser or World Wide Web and it
   can be accessed across the globe. Any technology which runs in the browser will have ‘n’
   number of life cycle methods and it does not contain main methods and System.out.println
   statements.

In JAVA, SUN micro initially has developed a concept called applets which runs in the context of browser. 

> An applet is a JAVA program which runs in the context of browser or World Wide Web.

In order to deal with applets we must import a package called java.applet.*. This package contains only one class Applet whose fully qualified name is java.applet.Applet.

Since applets are running in the browser, the class Applet contains the life cycle methods. Life cycle methods are also called as loop back methods.

An applet is a Java program that runs in a Web browser. An applet can be a fully functional Java application because it has the entire Java API at its disposal. 

There are some important differences between an applet and a standalone Java application, including the following: 

- An applet is a Java class that extends the java.applet.Applet class. 
- A main() method is not invoked on an applet, and an applet class will not define main(). 
- Applets are designed to be embedded within an HTML page. 
- When a user views an HTML page that contains an applet, the code for the applet is downloaded to the user's machine. 
- A JVM is required to view an applet. The JVM can be either a plug-in of the Web browser or a separate runtime environment. 
- The JVM on the user's machine creates an instance of the applet class and invokes various methods during the applet's lifetime. 
- Applets have strict security rules that are enforced by the Web browser. The security of an applet is often referred to as sandbox security, comparing the applet to a child playing in a sandbox with various rules that must be followed. 
- Other classes that the applet needs can be downloaded in a single Java Archive (JAR) file. 



# Life Cycle of an Applet: 

Five methods in the Applet class give you the framework on which you build any serious applet: 

- **Public void init ()**: This is the method which is called by the browser only one time after loading
  the applet. In this method we write some block of statements which will perform one time
  operations, such as, obtaining the resources like opening the files, obtaining the database
  connection, initializing the parameters, etc. This method is intended for whatever initialization is needed for your applet. It is called after the param tags inside the applet tag have been processed. 
- **Public void start ()**: After calling the init method, the next method which is from second request
  to sub-sequent requests the start method only will be called i.e., short method will be called
  each and every time. In this method we write the block of statement which provides business
  logic. This method is automatically called after the browser calls the init method. It is also called whenever the user returns to the page containing the applet after having gone off to other pages. 
- **Public void stop ():** This id the method which is called by the browser when we minimize the
  window. In this method we write the block of statements which will temporarily releases the
  resources which are obtained in init method. This method is automatically called when the user moves off the page on which the applet sits. It can, therefore, be called repeatedly in the same applet.  
- **Public void destroy ()**: This is the method which will be called by the browser when we close the
  window button or when we terminate the applet application. In this method we write same
  block of statements which will releases the resources permanently which are obtained in init
  method.This method is only called when the browser shuts down normally. Because applets are meant to live on an HTML page, you should not normally leave resources behind after a user leaves the page that contains the applet.  
- paint: Invoked immediately after the start() method, and also any time the applet needs to repaint itself in the browser. The paint() method is actually inherited from the java.awt. Another method which is not a life cycle method is public void paint (). This is the method which will be called by the browser after completion of start method. This method is used for displaying the data on to the browser. Paint method is internally calling the method called drawString whose prototype is given below.
  java.awt.Graphics
  (Graphics => public void drawString (String, int row position, int column position))
  An object of Graphics class will be created automatically after loading the applet into the browser.



## STEPS for developing APPLET PROGRAM:
1. Import java.applet.Applet package.
2. Choose the user defined class that must extends java.applet.Applet class and ensure the
   modifier of the class must be public.
3. Overwrite the life cycle methods of the applet if require.
4. Save the program and compile.
5. Run the applet: To run the applet we have two ways. They are using HTML program and using
   applet viewer tool.

Using HTML program: In order to run the applet through HTML program we must use the following tag.
Syntax:

```c
<applet code =.class file of the applet  height = height value width = width value></applet>
<!-- For example: File name: MyApp.html-->
<HTML>
<HEAD>
<TITLE> My applet example </TITLE>
</HEAD>
<BODY>
<APPLET code="MyApp" height=100 width=150>
</APPLET>
</BODY>
</HTML>
```





# AWT: Abstract WindowingToolkit

In JAVA we can developto types of GUI (Graphic User Interface) applications. They are **standalone **GUI applications and **distributed **GUI applications. A **standalone GUI application** is one which runs in the context of local disk and our classmust extends a predefined class called java.lang.frame. A **distributed GUIapplication **is one which runs in the context of browser and our class mustextend java.applet.Applet class.

As a part of GUIapplications we use to create two types of components. They are **passive components **and **Active Components**

A **passive component **isone where there is no interaction from the user. For example label. An **active component **is one where there is an interaction from the user. For examplebutton, check box, scroll bar, etc.

The **active andpassive components **in JAVA are available in terms of classes. In order todeal with any GUI applications we must import a package called java.awt.*(contains various classes and interfaces for creating GUI components) andjava.awt.event.* (contains various classes and interfaces which will providefunctionality to GUI components).

 

**AWT Hierarchy Chart: **Whenever we develop anyGUI application we must have readily available window component and windowcomponent must contain frame component. Any GUI component which we want tocreate gives the corresponding class and Container class. 

![img](images/awt01.jpg)AContainer is a class whose object allows us to add ‘n’ number of similar ordifferent GUI components to make a final application Except Object class andApplet class all the classes in the a to java.awt.* package.

 

**Label class**:

Label is a class whichis used for creating label as a part of windows application. The componentlabel comes under passive component. Labels always improve the functionalityand readability of active components. Creating a label is nothing but creatingan object of label components.

**Label class API:**

**Data members:**

```java
publicstatic final int LEFT (0)
publicstatic final int CENTER (1)
publicstatic final int RIGHT (2)
```

Theabove three statements are called alignment parameters or modifiers.

**Constructors:**

```java
Label()
Label(String)
Label(String label name, int alignment modifier)
```

**Instance methods:**

```java
public void setText (String);
public String getText ();
public void setAlignment (int);
public int getAlignment ();
```



**Write a JAVA programwhich creates Window and Frame?**

```java
import java.awt.*;
class myf extends Frame
{
Myf ()
{
setText (“AshaKrishna”);
setSize (100, 100);
setBackground (Colo
setForeground (Color, red);
setVisible (true);
}
}
class FDemo
{
Public static void main (String [] args)
{
Myf mo=new myf ();
}
}
```

**Event Delegation Model**

Whenever we want to develop any windows applications one must deal with event delegation model.Event delegation model contains four properties. They are: In order to process any active components, we must know either name or caption or label or reference of the component (object). Whenever we interact any active component,the corresponding active component will have one predefined Event class, whoseobject will be created and that object contains two details:

1. Name of the component.
2. Reference of the component.

The general form of every Event class is xxx event.

