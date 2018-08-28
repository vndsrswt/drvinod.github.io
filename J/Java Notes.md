# Modifiers

1. Access modifiers
2. Non-Access Modifiers
   1. Abstract methods and Classes
   2. Final Variables and Methods, FinalClasses, Finalize Methods
   3. Static Members

 Java provides a number of access modifiers to set access levels for classes, variables, methods, and constructors. Access Modifiers are used at 2 access levels in Java.

**1.      ****Top-level for Classes & Interfaces**

a.      **Default**

-   Visible to the same package only. not accessiblein other packages or sub packages****

-   do not explicitly declare****

b.      **Public**

-   Visible to the world****

**2.      ****Member-level for Classes & Interfaces**

a.      **Public**

-   Visible to the world****

b.      **Protected**

-   Visible to the package and all subclasses of itsclass in any package where this class is visible.

c.      **Default**

-   Visible to the same package only. not accessiblein other packages or sub packages****

-   do not explicitly declare****

d.      **Private**

-   Visible to the class only

** **

** **

**3.      ****Non-Access Modifiers**

a.      **Static Members**

-   Static members are the members with Statickeyword in their declarations.

-   Class variables are called as Static variables.These members belong to the class not to the object i.e. they are notinstantiated when the class instance is created.

-   The values of these variables are not part ofthe object state.

-   The static variables are initialized to theirdefault values (if explicit initialization is not specified) at the time ofclass loading.

-   The Static methods are called as **classmethods**. A static method can directly access other static members in theclass. It cannot access instance (non-static) members of the class. But it canalways use a reference of the class type to access its members both static andnon-static.

b.      **Final Member**

-   Final variable is a constant; its value cannotbe changed after its initialization.

-   This applies to instance, static and localvariables including parameters that are declared as final.

-   A final variable of primitive data type cannotchange its value once it has been initialized. A final variable of a referencetype cannot change its reference value once it has been initialized, but thestate of the object it denotes can still be changed.

-   **Note**

1.      Variables defined in Interfaces are implicitlyFinal.

2.      Final variables must be initialized before it isused.

3.      Final methods in a class are complete i.e. thesemethods have implementations and hence cannot be overridden in the subclasses.

c.      **Abstract**

-   If method has a keyword abstract in itsdeclaration, then such method/function is called Abstract method. Abstractmethods do not have an implementation i.e. method body is not defined; onlymethod prototype is specified in the class definition.

-   Note:

1.      Only instance methods can be declared asabstract.

2.      Since Static methods cannot be overriddendeclaring abstract static method would of no use.

-   A Final method cannot be abstract and viceversa.

-   Methods specified in an Interface are implicitlyabstract.

-   **Class: **Contains abstract methods. Cannotbe instantiated****

-   **Interface: **All interfaces are implicitlyabstract. The modifier is optional.

-   **Method**: Method without a body. Signatureis followed by a semicolon. The class must also be abstract.

d.      **Synchronized Methods:**

-   Multiple threads can be executing in a programand at times they might try to execute several methods on the same objectsimultaneously.

\-    

-   If there is a requirement that only one threadat a time should execute a method in the object, then such methods can bedeclared as Synchronized. Their execution will be mutually exclusive among allthreads. At any given time, at the most one thread will be executing a Synchronizedmethod on an object.

-   Note

1.      Synchronized methods are also applicable toStatic methods of a class.

e.      **Native Methods**

-   Native Methods are also called as Foreignmethods. Such methods implementation is not defined in Java but in anotherprogramming language.

-   These methods are specified in the class asmethod prototypes with prefix with keyword native, no method body is defined inthe Java class.

f.       **Transient Fields**

-   Objects can be stored using serialization.Serialization transforms objects into an output format which is helpful forstoring objects. Objects can later be retrieved in the same state as when theywere serialized, meaning that fields included in the serialization will havethe same values at the time of serialization. Such objects are said to bePersistent.

-   The fields are declared with keyword Transientin their class declaration if its value should not be saved when objects of theclass are written to persistent storage.

g.      **Volatile Fields**

-   During execution, complied code might cache thevalues of fields for efficiency reasons. And as multiple threads will accessthe same field, caching is not allowed to cause inconsistencies when readingand writing the value in the field.

-   The Volatile modifier can be used to inform thecompiler that it should not attempt to perform optimizations on the field whichcould cause unpredicted results when the field is accessed by multiple threads

-   Accessibility Modifiers for Nested Classes &Interfaces

h.      **Nested Interfaces**

-   Access modifiers can be used in Nestedinterfaces. An interface declared within another class or interface is called aNested interface. A top-level interface is the one which is not nested.

-   Only one type of nested interface is availablein Java based on declarative context, Static member interface. These are interfacesdefined with keyword Static inside the top-level interface or class or inanother Static member class or interface. It can be instantiated like a normaltop-level interface or class, no enclosing instance is required for thisinterface instantiation.

i.        **Nested Classes**

-   Access modifiers are also used in Nestedclasses. A class declared within another class is called a Nested class. Atop-level class is the one which is not nested.

-   They are 2 categories of Nested classes based onthe declarative context. They are

1.      Static member classes

2.      Inner classes

a.      Inner classes are defined in 3 differentcategories. They are

b.      Non-static member classes

c.      Local classes

d.      Anonymous classes

j.        **Static member classes**

-   Classes which are defined with Static modifierinside the top-level class or other Static member class are called Staticmember classes. It can be instantiated like a normal top-level class; noenclosing instance is required for this class instantiation.


-   All the 4 accessibility modifiers i.e. Public,Protected, Package & Private are applicable to Static member classes’declaration.

k.      **Non-Static member classes**

-   Classes which are defined without Staticmodifier inside another class are called non-static member classes. An instanceof a non-static member class always has an enclosing instance associated withit.

-   The accessibility modifiers i.e. Public,Protected, Package & Private,abstract, final are applicable to Non-Staticmember classes’ declaration.

l.        **Local classes**

-   These classes are defined in the context of ablock as in a body of the method or normal local block, just as local variablesdefined in a method body or local block. An instance of a local class has anenclosing instance associated with it, if it is declared in non-static context.

-   No accessibility modifiers are applicable forLocal classes.

m.    **Anonymous classes**

-   These are defined as expressions andinstantiated on the fly. An instance of anonymous class has an enclosinginstance associated with it, if it is declared in non-static context.

-   No accessibility modifiers are applicable forAnonymous classes.

-   **Note**

1.      A Nested Class or Interface cannot have the samename as any of the enclosing classes or interfaces.

 

 
