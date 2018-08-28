**Java Terminology**

** **

**Basic Syntax**

about Java programs, it is very important to keep in mindthe following points.

·        Case Sensitivity - Java is case sensitive,which means identifier Hello and hello would have different meaning in Java.

·        Class Names - For all class names, the firstletter should be in Upper Case

If several words are used to form a name ofthe class, each inner word's first letter should be in Upper Case.

Example class MyFirstJavaClass

·        Method Names - All method names should startwith a Lower Case letter.

If several words are used to form the name ofthe method, then each inner word's first letter should be in

Upper Case.

Example public void myMethodName()

·        Program File Name - Name of the program fileshould exactly match the class name.

When saving the file, you should save itusing the class name (Remember Java is case sensitive) and append

'.java' to the end of the name (if the filename and the class name do not match your program will not compile).

Example : Assume 'MyFirstJavaProgram' is theclass name, then the file should be saved

as'MyFirstJavaProgram.java'

·        public static void main(String args[]) - Javaprogram processing starts from the main() method, which is a mandatory part ofevery Java program.

 

**Java  Identifier**

·        All Java components require names. Names usedfor classes, variables and methods are called identifiers.

·        In Java, there are several points to rememberabout identifiers. They are as follows:

·        All identifiers should begin with a letter (Ato Z or a to z), currency character ($) or an underscore (_).

·        After the first character, identifiers canhave any combination of characters.

·        A keyword cannot be used as an identifier.

·        Most importantly identifiers are casesensitive.

·        Examples of legal identifiers:age, $salary,_value, __1_value

·        Examples of illegal identifiers: 123abc,-salary

 

**Java  Modifiers**

Like other languages, it is possible to modify classes,methods, etc., by using modifiers. There are two categories

of modifiers:

• Access Modifiers: default, public, protected, private

• Non-access Modifiers: final, abstract, strictfp

We will be looking into more details about modifiers inthe next section.

 

**Java  Variables:**

We would see following type of variables in Java:

• Local Variables

• Class Variables (Static Variables)

• Instance Variables (Non-static variables)

 

**Java  Arrays: **

Arrays are objects that store multiple variables of thesame type. However, an array itself is an object on the heap.

We will look into how to declare, construct andinitialize in the upcoming chapters.

**Java  Enums: **

Enums were introduced in java 5.0. Enums restrict avariable to have one of only a few predefined values. The

values in this enumerated list are called enums.

With the use of enums, it is possible to reduce thenumber of bugs in your code.

For example, if we consider an application for a freshjuice shop, it would be possible to restrict the glass size to

small, medium and large. This would make sure that itwould not allow anyone to order any size other than the

small, medium or large.

 

 