# Unit II

> Classes & Objects: Class fundamentals, declaring object reference variable, Introducing methods, constructors, the key word, garbage collection, Overloading methods. Inheritance and polymorphism: super class and subclass, protected members, Relationship between super and sub class. Inheritance hierarchy, abstract classes and methods, final methods and classes, nested classes, Type wrappers.

### Wrapper Classes

Vectors cannot handle primitive datatypes like int, float,long, char, and double. Primitive data types may be converted into object typesusing the wrapper classes contained in the java.lang.package.

The following table gives the details about those classes andmethods used for converting storing data to fundamental data: 

| **DATA TYPES** | **WRAPPER CLASS** | **CONVERTION METHOD FROM STRING DATA TO  FUNDAMENTAL DATA TYPE** | **Converting Object Numbers to Primitive  Number Using typeValue() method** |
| -------------- | ----------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| byte           | Byte              | public static byte parseByte (string)                        |                                                              |
| short          | Short             | public static short parseShort (string)                      |                                                              |
| int            | Integer           | public static int parseInt (string)                          | int i = IntVal.intValue();                                   |
| long           | Long              | public static long parseLong (string)                        | Long  i = LongVal.longValue();                               |
| float          | Float             | public static float parseFloat (string)                      | float i = FloatVal.floatValue();                             |
| double         | Double            | public static double parseDouble (string)                    | double i = DoubleVal.doubletValue();                         |
| char           | Char              | public static char parseChar (string)                        |                                                              |
| boolean        | Boolean           | public static boolean parseBoolean(string)                   |                                                              |

 

Wrapper classes are basically used for converting the string data into fundamental data type. Each and every wrapper class contains the following generalized parse methods.
public static Xxx parseXxx (String);
here, Xxx represents fundamental data type. 

The wrapper classes have a number of unique methods for handling primitive data types and objects

Whenever we develop a JAVA program it is recommended to write ‘n’ number of business logic classes and single execution logic class. A business logic class is one which contains ‘n’ number of user defined methods in which we write business logic. Business logic is one which is provided by JAVA programmer according business rules (requirements) started by customer. Whatever data we represent in JAVA runtime environment it is by default treated as objects of string data. As a programmer when we start any JAVA program an object of string class is created depends on number of values we pass.

 