# String

**Unit-III**

String handling:The string constructor, string length, special string operator characterextraction, **string** comparison**,searching string, modifying string, data conversion, **changing the case of characters**, **string buffer**.

**Introduction to String Handling**

String is probably the most commonly used class in java library. String class is encapsulated under java.lang package. In java, every string that you create is an object of type String. One important thing to notice about string object is that string objects are immutable that means once a string object is created it cannot be altered. An object of the String class represents a string of characters.

**Literal Strings**: Literal strings are anonymous constant objects of the String class that are defined as text in double quotes. Literal strings don’t have to be constructed: they are “justthere.”

*Strings1 = "Biology”;*

*Strings2 = "C:\\jdk1.4\\docs " ;*

*Strings3 = "Hello\n";*

**Empty Strings**

An emptystring has no characters; its length is 0. Not to be confused with anuninitialized string:

*Strings1 = "";*

*Strings2 = new String();*

*privateString errorMsg; errorMsg is null*

 

**What is an Immutableobject?**

Anobject whose state cannot  changed afterit is created is known as an Immutable object. String, Integer, Byte, Short,Float, Double and all other wrapper class's objects are immutable. Immutableobjects are convenient because several references can point to the same objectsafely: there is no danger of changing an object through one reference withoutthe others being aware of the change.

 **Creating an Immutableclass**

```java
publicfinal class MyString
{
  final String str;
  MyString(String s)
  {
    this.str = s;
  }
  public String get()
  {
	return str;*
  }
}
```

Inthis example MyString is an immutable class. MyString's state cannot be changedonce it is created.

 

**Creating a String object**

Stringcan be created in number of ways, here are a few ways of creating stringobject.

1.       Using a Stringliteral: String literal is a simple string enclosed in double quotes "" . A string literal is treated as a Sting object.

*String str1 = "Hello";*

2.       Using anotherString object: 

*String str2 = new String(str1);*

*3.      *Using new Keyword:**

*String str3 = new String("Java");*

4.       Using +operator (Concatenation)

*String str4 = str1 + str2; *or, *String str5 ="hello"+"Java";*

Eachtime you create a String literal, the JVM checks the string pool first. If thestring literal already exists in the pool, a reference to the pool instance is returned.If string does not exist in the pool, a new string object is

created,and is placed in the pool. String objects are stored in a special memory areaknown as string constant pool inside the heap memory.

 

**String object and How theyare stored**

Whenwe create a new string object using string literal, that string literal isadded to the string pool, if it is not

presentthere already.

*Stringstr= "Hello";*

And,when we create another object with same string, then a reference of the stringliteral already present in

stringpool is returned.

*Stringstr2=str;*

Butif we change the new string, its reference gets modified.

*str2=str2.concat("world");*

 

**Concatenating String**

Thereare 2 methods to concatenate two or more string.

1.       Using concat()method

2.       Using + operator

 

**1.      ****Using concat()method: **

*string s = "Hello";*

*string str = "Java";*

*string str2 = s.concat(str);*

*String str1 ="Hello".concat("Java"); //works with string literals too*

**2.      ****Using +operator**

*string str = "Rahul";*

*string str1 = "Dravid";*

*string str2 = str + str1;*

*string st = "Rahul"+"Dravid";*

* *

**String Comparison**

Stringcomparison can be done in 3 ways.

1.       Using equals()method

2.       Using ==operator

3.       By CompareTo()method

 

1.       **Using equals() method: **equals() methodcompares two strings for equality. Its general syntax is, boolean equals(Object str). It compares the content of the strings. It will return true ifstring matches, else returns false.

*String s = "Hell";*

*String s1 = "Hello"; *

*String s2 = "Hello"; *

*s1.equals(s2); //true *

*s.equals(s1) ; //false*

 

**2.      ****Using == operator**

== operator compares two object references tocheck whether they refer to same instance. This also, will return true onsuccessful match.****

*String s1 = "Java";*

*String s2 = "Java";*

*String s3 = new string ("Java");*

*test(Sl == s2) //true*

*test(s1 == s3) //false*

**3.      ****By compareTo()method: **compareTo()method compares values and returns an int which tells if the string compared isless than, equal to or greater than th other string. Its general syntax is,****

*int compareTo(String str)*

To use this function youmust implement the Comparable Interface. compareTo() is the only function in* *Comparable Interface.**

*String s1 = "Abhi";*

*String s2 = "Viraaj";*

*String s3 = "Abhi";*

*s1.compareTo(S2); //return -1 because s1 < s2*

*s1.compareTo(S3); //return 0 because s1 == s3*

*s2.compareTo(s1); //return 1 because s2 > s1*

 

**charAt(): **charAt()function returns the character located at the specified index.****

*String str = "studytonight";*

*System.out.println(str.charAt(2));*

Output : u

**equalsIgnoreCase(): **equalsIgnoreCase()determines the equality of two Strings, ignoring thier case (upper or lowercase doesn't matters with this fuction ).****

*String str = "java";*

*System.out.println(str.equalsIgnoreCase("JAVA"));*

Output: true

**length() : **length()function returns the number of characters in a String.

*String str = "Count me";*

*System.out.println(str.length());*

* *

*public class StringDemo{*

*public static void main(String args[]){*

*String palindrome ="Dot saw I was Tod";*

*int len = palindrome.length();*

*System.out.println("String Length is :"+ len );*

*}*

*}*

Output: 8

**replace(): **replace()method replaces occurances of character with a specified new character.

*String str = "Change me";*

*System.out.println(str.replace('m','M'));*

Output: Change Me

**substring(): **substring()method returns a part of the string. substring() method has two forms,

*publicString substring(int begin);*

*publicString substring(int begin, int end);*

Thefirst argument represents the starting point of the subtring. If thesubstring() method is called with only one argument, the subtring returned,will contain characters from specified starting point to the end of original

string.But, if the call to substring() method has two arguments, the second argumentspecify the end point of

substring.

*Stringstr = "0123456789";*

*System.out.println(str.substring(4));*

Output: 456789

*System.out.println(str.substring(4,7));*

Output: 456

**toLowerCase(): **toLowerCase()method returns string with all uppercase characters converted to lowercase.****

*String str = "ABCDEF";*

*System.out.println(str.toLowerCase());*

Output: abcdef

**valueOf(): **Overloadedversion of valueOf() method is present in String class for all primitive datatypes and for type Object.

NOTE: valueOf() function is used to convert primitive data types into Strings. Butfor objects, valueOf() method calls toString() function.

**toString(): **toString()method returns the string representation of the object used to invoke thismethod. toString() is used to represent any Java Object into a meaningfulstring representation. It is declared in the Object class, hence can beoverrided by any java class. (Object class is super class of all java classes.)

*public class Car {*

*public static void main(String args[])*

*{*

*Car c=new Car();*

*System.out.println(c);*

*}*

*public String toString()*

*{*

*return "This is my car object";*

*}*

*}*

Output: This is my car object

Wheneverwe will try to print any object of class Car, its toString() function will becalled. toString() can also be used with normal string objects.

*Stringstr = "Hello World";*

*System.out.println(str.toString());*

Output: Hello World

**toString() withConcatenation: **Whenever we concatenate any other primitive data type, orobject of other classes with a String object, toString() function or valueOf()function is called automatically to change the other object or primitive type intostring, for successful concatenation.

*intage = 10;*

*Stringstr = "He is" + age + "years old.";*

Inabove case 10 will be automatically converted into string for concatenationusing valueOf() function.

**toUpperCase(): **This methodreturns string with all lowercase character changed to uppercase.

*Stringstr = "abcdef";*

*System.out.println(str.toLowerCase());*

Output: ABCDEF

**trim(): **This methodreturns a string from which any leading and trailing whitespaces has beenremoved.

*Stringstr = " hello ";*

*System.out.println(str.trim());*

Output: hello

** **

**Creating  Format Strings: **You have printf() and format() methods to printoutput with formatted numbers. The String class has an equivalent class method,format(), that returns a String object rather than a PrintStream object. UsingString's static format() method allows you to create a formatted string thatyou can reuse, as opposed to a one-time print statement. For example, insteadof:

*System.out.printf("Thevalue of the float variable is "+ "%f, while the value of the integer"+ "variable is %d, and the string "+*

*"is %s", floatVar,intVar, stringVar);*

youcan write:

Stringfs;

*fs =String.format("Thevalue of the float variable is "+"%f, while the value of the integer"+"variable is %d, and the string "+"is %s", floatVar,intVar, stringVar);*

*System.out.println(fs)***

# StringBuffer class

StringBufferclass is used to create a mutable string object. It represents growable andwritable character

sequence.As we know that String objects are immutable, so if we do a lot of changes withString objects, we

willend up with a lot of memory leak. So StringBuffer class is used when we have tomake lot of modifications to our string. It is also thread safe i.e multiplethreads cannot access it simultaneously. StringBuffer defines 4 constructors.They are,

1.       StringBuffer ()

2.       StringBuffer (int size )

3.       StringBuffer (String str )

4.       StringBuffer (charSequence [ ]ch )

StringBuffer()creates an empty string buffer and reserves room for 16 characters. stringBuffer(intsize) creates an empty string and takes an integer argument to set capacity ofthe buffer.

**Example showing differencebetween String and StringBuffer**

*class Test {*

*public static void main(String args[])*

*{*

*String str = "study";*

*str.concat("tonight");*

*System.out.println(str); // Output: study*

*StringBuffer strB = newStringBuffer("study");*

*strB.append("tonight");*

*System.out.println(strB); // Output: studytonight*

*}*

*}*

**Important methods ofStringBuffer class**

Thefollowing methods are some most commonly used methods of StringBuffer class. **append()**. This method will concatenatethe string representation of any type of data to the end of the invoking StringBufferobject. append() method has several overloaded forms.

*StringBufferappend(String str)*

*StringBufferappend(int n)*

*StringBufferappend(Object obj)*

Thestring representation of each parameter is appended to StringBuffer object.

*StringBufferstr = new StringBuffer("test");*

*str.append(123);*

*System.out.println(str);*

Output: test123

**insert(): **This methodinserts one string into another. Here are few forms of insert() method.****

*StringBufferinsert(int index, String str)*

*StringBufferinsert(int index, int num)*

*StringBufferinsert(int index, Object obj)*

Herethe first parameter gives the index at which position the string will beinserted and string representation of second parameter is inserted intoStringBuffer object.

*StringBufferstr = new StringBuffer("test");*

*str.insert(4,123);*

*System.out.println(str);*

Output: test123

**reverse(): **This methodreverses the characters within a StringBuffer object.****

*StringBufferstr = new StringBuffer("Hello");*

*str.reverse();*

*System.out.println(str);*

Output: olleH

**replace(): **This methodreplaces the string from specified start index to the end index.****

*StringBufferstr = new StringBuffer("Hello World");*

*str.replace(6, 11, "java");*

*System.out.println(str);*

Output: Hello java

**capacity(): **This methodreturns the current capacity of StringBuffer object.

*StringBufferstr = new StringBuffer();*

*System.out.println(str.capacity() );*

Output: 16

**ensureCapacity(): **This method isused to ensure minimum capacity of StringBuffer object. StringBuffer str = new *StringBuffer("hello");*****

*str.ensureCapacity(10);*

 

# String Builder

StringBuilderis identical to StringBuffer except for one important difference it is notsynchronized, which means it is not thread safe. Its because StringBuildermethods are not synchronised.

 

**StringBuilder Constructors**

1.       StringBuilder (), creates an empty StringBuilder and reserves room for 16 characters.

2.       StringBuilder (int size ), create an empty string and takes an integer argument to setcapacity of the buffer.

3.       StringBuilder (String str ), create a StringBuilder object and initialize it with string str.

**Difference betweenStringBuffer and StringBuilder class**

| StringBuffer  class                      | StringBuilder  class                |
| ---------------------------------------- | ----------------------------------- |
| StringBuffer  is synchronized.           | StringBuilder  is not synchronized. |
| Because  of synchronisation, StringBuffer operation is slower than StringBuilder. | StringBuilder  operates faster.     |

**Example of StringBuilder**

*classTest {*

*publicstatic void main(String args[])*

*{*

*StringBuilderstr = new StringBuilder("study");*

*str.append("tonight" );*

*System.out.println(str);*

*str.replace(6, 13, "today");*

*System.out.println(str);*

*str.reverse();*

*System.out.println(str);*

*str.replace(6, 13, "today");*

*}*

*}*

Output:studytonight

studyttoday

yadottyduts
