- Java provides a number of access modifiers to set access levels for classes, variables, methods, and constructors. 

- Access Modifiers are used at 2 access levels in Java.

- 1. **Top-level for Classes & Interfaces**

  2. 1. Default

     2. - Visible to the same        package only. not accessible in other packages or sub packages
        - do not explicitly declare

     3. Public

     4. - Visible to the world

  3. **Member-level for Classes & Interfaces**

  4. 1. Public

     2. - Visible to the world

     3. Protected

     4. - Visible to the package and        all subclasses of its class in any package where this class is visible.

     5. Default

     6. - Visible to the same        package only. not accessible in other packages or sub packages
        - do not explicitly declare

     7. Private

     8. - Visible to the class only

  5. **Non-Access Modifiers**

  6. 1. Static Members

     2. - Static members are the        members with Static keyword in their declarations.
        - Class variables are called        as Static variables. These members belong to the class not to the        object i.e. they are not instantiated when the class instance is        created.
        - The values of these        variables are not part of the object state.
        - The static variables are        initialized to their default values (if explicit initialization is not        specified) at the time of class loading.
        - The Static methods are        called as class methods. A static method can directly access other static        members in the class. It cannot access instance (non-static) members of        the class. But it can always use a reference of the class type to        access its members both static and non-static.

     3. Final Member

     4. - Final variable is a constant; its value cannot be changed after its initialization.

        - This applies to instance, static and local variables including parameters that are declared as final.

        - A final variable of primitive data type cannot change its value once it has been initialized. A final variable of a reference type cannot change its reference value once it has been initialized, but the state of the object it denotes can still be changed.

        - Note

        - 1. Variables defined in Interfaces are implicitly Final.
          2. Final variables must be initialized before it is used.
          3. Final methods in a class are complete i.e. these methods have implementations and hence cannot be overridden in the subclasses.

     5. Abstract

     6. - If method has a keyword abstract in its declaration, then such method/function is called Abstract method. Abstract methods do not have an implementation i.e. method body is not defined; only method prototype is specified in the        class definition.

        - Note:

        - 1. Only instance methods can be declared as abstract.
          2. Since Static methods cannot be overridden declaring abstract static method would of no use.

        - A Final method cannot be abstract and vice versa.

        - Methods specified in an Interface are implicitly abstract.

        - Class: Contains abstract methods. Cannot be instantiated

        - Interface: All interfaces are implicitly abstract. The modifier is optional.

        - Method: Method without a body. Signature is followed by a semicolon. The class must also be abstract.

     7. Synchronized Methods:

     8. - Multiple threads can be        executing in a program and at times they might try to execute several        methods on the same object simultaneously.

        -  If there is a requirement        that only one thread at a time should execute a method in the object,        then such methods can be declared as Synchronized. Their execution will        be mutually exclusive among all threads. At any given time, at the most        one thread will be executing a Synchronized method on an object.

        - Note

        - 1. Synchronized         methods are also applicable to Static methods of a class.

     9. Native       Methods

     10. - Native Methods are also        called as Foreign methods. Such methods implementation is not defined        in Java but in another programming language.
         - These methods are        specified in the class as method prototypes with prefix with keyword        native, no method body is defined in the Java class.

     11. Transient       Fields

     12. - Objects can be stored        using serialization. Serialization transforms objects into an output        format which is helpful for storing objects. Objects can later be        retrieved in the same state as when they were serialized, meaning that        fields included in the serialization will have the same values at the        time of serialization. Such objects are said to be Persistent.
         - The fields are declared        with keyword Transient in their class declaration if its value should        not be saved when objects of the class are written to persistent        storage.

     13. Volatile       Fields

     14. - During execution, complied        code might cache the values of fields for efficiency reasons. And as        multiple threads will access the same field, caching is not allowed to        cause inconsistencies when reading and writing the value in the field.
         - The Volatile modifier can        be used to inform the compiler that it should not attempt to perform        optimizations on the field which could cause unpredicted results when        the field is accessed by multiple threads
         - Accessibility Modifiers        for Nested Classes & Interfaces

     15. Nested       Interfaces

     16. - Access modifiers can be        used in Nested interfaces. An interface declared within another class        or interface is called a Nested interface. A top-level interface is the        one which is not nested.
         - Only one type of nested        interface is available in Java based on declarative context, Static        member interface. These are interfaces defined with keyword Static        inside the top-level interface or class or in another Static member        class or interface. It can be instantiated like a normal top-level        interface or class, no enclosing instance is required for this        interface instantiation.

     17. Nested       Classes

     18. - Access modifiers are also        used in Nested classes. A class declared within another class is called        a Nested class. A top-level class is the one which is not nested.

         - They are 2 categories of        Nested classes based on the declarative context. They are

         - 1. Static member         classes

           2. Inner classes

           3. 1. Inner classes          are defined in 3 different categories. They are
              2. Non-static member          classes
              3. Local classes
              4. Anonymous classes

     19. Static       member classes

     20. - Classes which are defined        with Static modifier inside the top-level class or other Static member        class are called Static member classes. It can be instantiated like a        normal top-level class; no enclosing instance is required for this        class instantiation.
         - All the 4 accessibility        modifiers i.e. Public, Protected, Package & Private are applicable        to Static member classes’ declaration.

     21. Non-Static       member classes

     22. - Classes which are defined        without Static modifier inside another class are called non-static        member classes. An instance of a non-static member class always has an        enclosing instance associated with it.
         - The accessibility        modifiers i.e. Public, Protected, Package & Private,abstract, final        are applicable to Non-Static member classes’ declaration.

     23. Local       classes

     24. - These classes are defined        in the context of a block as in a body of the method or normal local        block, just as local variables defined in a method body or local block.        An instance of a local class has an enclosing instance associated with        it, if it is declared in non-static context.
         - No accessibility modifiers        are applicable for Local classes.

     25. Anonymous classes

     26. - These are defined as expressions and instantiated on the fly. An instance of anonymous class        has an enclosing instance associated with it, if it is declared in        non-static context.

         - No accessibility modifiers are applicable for Anonymous classes.

         - Note

         - 1. A Nested Class         or Interface cannot have the same name as any of the enclosing classes         or interfaces.