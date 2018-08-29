


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



> To set the font we must use a class called Font.

```java
Syntax: Font f=new Font (“arial”, Font.BOLD, 40);
In the Graphics class we have the following method which will set the font.
java.awt.Graphics
public void setFont (Font fobj)

For example:
	g.setFont (f);

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

```


AWT (abstract windowing toolkit)

In JAVA we can develop to types of GUI (Graphic User Interface) applications. They are standalone GUI applications and distributed GUI applications.

* A standalone GUI application is one which runs in the context of local disk and our class must extends a predefined class called java.lang.Frame class.
* A distributed GUI application is one which runs in the context of browser and our class must extend java.applet.Applet class.

As a part of GUI applications we use to create two types of components. They are passive components and active components.

* A passive component is one where there is no interaction from the user. For example label
* An active component is one where there is an interaction from the user. For example button,
  check box, scroll bar, etc.

The active and passive components in JAVA are available in terms of classes. In order to with any GUI applications we must import a package called java.awt.* (contains various classes and interfaces for creating GUI components) and java.awt.event.* (contains various classes and interfaces which will provide functionality to GUI components).

Whenever we develop any GUI application we must have readily available window component and window component must contain frame component. Any GUI component which we want to create gives the corresponding class and adds all those components to the object of Container class.

A Container is a class whose object allows us to add ‘n’ number of similar or different GUI components to make a final application Except Object class and Applet class all the classes in the a to java.awt.* package.

```java
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
```