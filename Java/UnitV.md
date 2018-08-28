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


#Life Cycle of an Applet: 

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




##STEPS for developing APPLET PROGRAM:

1. Import java.applet.Applet package.
2. Choose the user defined class that must extends java.applet.Applet class and ensure the
    modifier of the class must be public.
3. Overwrite the life cycle methods of the applet if require.
4. Save the program and compile.
5. Run the applet: To run the applet we have two ways. They are using HTML program and using
    applet viewer tool.

Using HTML program: In order to run the applet through HTML program we must use the following tag.
Syntax:
<applet code =”.class file of the applet” height = height value width = width value>
  </applet>

For example: File name: MyApp.html
```html
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

Using appletviewer: Appletviewer is a tool supplied by SUN micro system to run the applet programs from the command prompt (in the case of browser is not supporting). 

Syntax: appletviewer filename.java
For example: appletviewer MyApp.java




E.g. A "Hello, World" Applet:  The following is a simple applet named HelloWorldApplet.java: 
```java
import java.applet.*; 
import java.awt.*; 
public class HelloWorldApplet extends Applet 
{
	public void paint (Graphics g) 
	{ 
		g.drawString ("Hello World",25,50); 
	} 
} 
```

 These import statements bring the classes into the scope of our applet class: 

- java.applet.Applet. 
- java.awt.Graphics. 

Without those import statements, the Java compiler would not recognize the classes Applet and Graphics, which the applet class refers to. 



##To set the font we must use a class called Font.

Syntax: Font f=new Font (“arial”, Font.BOLD, 40);
In the Graphics class we have the following method which will set the font.
java.awt.Graphics
public void setFont (Font fobj)

For example:
​	g.setFont (f);

Write a JAVA program which illustrates the life cycle methods of applet?
Answer:
import java.applet.*;
import java.awt.*;
/*<applet code="MyApp1" height=300 width=300>
</applet>*/
public class MyApp1 extends Applet
{
String s=" ";
public void init ()
{
setBackground (Color.green);
setForeground (Color.red);
s=s+" INIT ";
}
public void start ()
{
s=s+" START ";
}
public void stop ()
{
s=s+" STOP ";
}
public void destroy ()
{
s=s+" DESTROY ";
}
public void paint (Graphics g)
{
Font f=new Font ("arial", Font.BOLD, 40);
g.setFont (f);
g.drawString (s,100,100);
}
};



#AWT (abstract windowing toolkit)

In JAVA we can develop to types of GUI (Graphic User Interface) applications. They are standalone GUI applications and distributed GUI applications.

* A standalone GUI application is one which runs in the context of local disk and our class must extends a predefined class called java.lang.Frame class.
* A distributed GUI application is one which runs in the context of browser and our class must extend java.applet.Applet class.

As a part of GUI applications we use to create two types of components. They are passive components and active components.

* A passive component is one where there is no interaction from the user. For example label
* An active component is one where there is an interaction from the user. For example button,
  check box, scroll bar, etc.

The active and passive components in JAVA are available in terms of classes. In order to with any GUI applications we must import a package called java.awt.* (contains various classes and interfaces for creating GUI components) and java.awt.event.* (contains various classes and interfaces which will provide functionality to GUI components).

![](./images/aet01.jpg)

Whenever we develop any GUI application we must have readily available window
component and window component must contain frame component. Any GUI component which we
want to create gives the corresponding class and adds all those components to the object of Container class.

A Container is a class whose object allows us to add ‘n’ number of similar or different GUI components to make a final application Except Object class and Applet class all the classes in the a to java.awt.* package.

Write a JAVA program which creates Window and Frame?
Answer:
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
};
class FDemo
{
Public static void main (String [] args)
{
Myf mo=new myf ();
}
};

