# **Scope of Variable**

The scope of a variable defines the section of the code inwhich the variable is visible. As a general rule, variables that are definedwithin a block are not accessible outside that block. The lifetime of avariable refers to how long the variable exists before it is destroyed.Destroying variables refers to deallocating the memory that was allotted to thevariables when declaring it. We have written a few classes till now. You mighthave observed that not all variables are the same. The ones declared in thebody of a method were different from those that were declared in the classitself. There are there types of variables: instance variables, formalparameters or local variables and local variables.

The scope of a variable is the part of the program overwhich the variable name can be referenced. ike C/C++, in iuJava, allidentifiers are lexically (or statically) scoped, i.e., scope of a variable candetermined at compiler time and independent of function call stack.

On a side note, unlike Java/C/C++, Perl supports bothdynamic ans static scoping. Perl’s keyword “my” defines a statically scopedlocal variable, while the keyword “local” defines dynamically scoped localvariable i.e., scope depends on function call stack.

Java programs are organized in the form of classes. Everyclass is part of some package.

Java scope rules can be covered under following categories.

**1.      ****Member Variables (Class Level Scope)**

These variables must be declared inside class(outside any function). They can be directly accessed anywhere in class. Let’stake a look at an example:

```
public class Test
```

```
{
```

```
    // All variables defined directly inside a class 
```

```
    // are member variables
```

```
    int a;
```

```
    private String b
```

```
    void method1() {....}
```

```
    int method2() {....}
```

```
    char c;
```

```
}
```

·        We can declare class variables anywhere inclass, but outside methods.

·        Access specified of member variables doesn’teffect scope of them within a class.

·        Member variables can be accessed outside a classwith following rules

**2.      ****Local Variables (Method Level Scope)**

Variables declared inside a method havemethod level scope and can’t be accessed outside the method.

```
public class Test
```

```
{
```

```
    void method1() 
```

```
    {
```

```
       // Local variable (Method level scope)
```

```
       int x;
```

```
    }
```

```
}
```

**3.      ****Some Important Points about Variablescope in Java:**

o  a set of curly brackets { } defines a scope.

o  In Java we can usually access a variable as longas it was defined within the same set of brackets as the code we are writing orwithin any curly brackets inside of the curly brackets where the variable wasdefined.

o  Any variable defined in a class outside of anymethod can be used by all member methods.

o  When a method has same local variable as amember, this keyword can be used to reference the current class variable.

o  For a variable to be read after the terminationof a loop, It must be declared before the body of the loop.

** **

 

 

You cannot refer to a variable before its declaration.

You can declare variables in several different places:

·        In a class body as class fields. Variablesdeclared here are referred to as class-level variables.

·        As parameters of a method or constructor.

·        In a method's body or a constructor's body.

·        Within a statement block, such as inside a whileor for block.

·        Variable scope refers to the accessibility of avariable.

 

The rule 1 is that variables defined in a block are onlyaccessible from within the block. The scope of the variable is the block inwhich it is defined. For example, consider the following for statement.