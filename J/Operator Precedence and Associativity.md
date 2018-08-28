Java has well-defined rules for specifying the order in which the operators in an expression are evaluated when the expression has several operators. For example, multiplication and division have a higher precedence than addition and subtraction. Precedence rules can be overridden by explicit parentheses.

**Precedence order**

When two operators share an operand the operator with the higher precedence goes first. For example, 1 + 2 * 3 is treated as 1 + (2 * 3), whereas 1 * 2 + 3 is treated as (1 * 2) + 3 since multiplication has a higher precedence than addition.

**Associativity**

When an expression has two operators with the same precedence, the expression is evaluated according to its associativity. For example x = y = z = 17 is treated as x = (y = (z = 17)), leaving all three variables with the value 17, since the = operator has right-to-left associativity (and an assignment statement evaluates to the value on the right hand side). On the other hand, 72 / 2 / 3 is treated as (72 / 2) / 3 since the / operator has left-to-right associativity.

**Precedence and associativity of Java operators**

The table below shows all Java operators from highest to lowest precedence, along with their associativity. Most programmers do not memorize them all, and even those that do still use parentheses for clarity.

**Order of evaluation of subexpressions**

Associativity and precedence determine in which order Java applies operators to subexpressions but they do not determine in which order the subexpressions are evaluated. In Java, subexpressions are evaluated from left to right (when there is a choice). So, for example in the expression A() + B() * C(D(), E()), the subexpressions are evaluated in the order A(), B(), D(), E(), and C(). Although, C() appears to the left of both D() and E(), we need the results of both D() and E() to evaluate C(). It is considered poor style to write code that relies upon this behavior (and different programming languages may use different rules).

**Short circuiting**

When using the conditional and and or operators (&& and ||), Java does not evaluate the second operand unless it is necessary to resolve the result. This allows statements like if (s != null && s.length() < 10) to work reliably. Programmers rarely use the non short-circuiting versions (& and |) with boolean expressions.

**Precedence order gone awry**

Sometimes the precedence order defined in a language do not conform with mathematical norms. For example, in Microsoft Excel, -a^b is interpreted as (-a)^b instead of -(a^b). So -1^2 is equal to 1 instead of -1, which is the values most mathematicians would expect. Microsoft acknowledges this quirk as a "design choice". One wonders whether the programmer was relying on the C precedence order in which unary operators have higher precedence than binary operators. This rule agrees with mathematical conventions for all C operators, but fails with the addition of the exponentiation operator. Once the order was established in Microsoft Excel 2.0, it could not easily be changed without breaking backward compatibility.

| **Operator**                             | **Description**                          | **Level** | **Associativity** |
| ---------------------------------------- | ---------------------------------------- | --------- | ----------------- |
| []  .  ()  ++  --                        | access array element  access object member  invoke a method  post-increment  post-decrement | 1         | left to right     |
| ++  --  +  -  !  ~                       | pre-increment  pre-decrement  unary plus  unary minus  logical NOT  bitwise NOT | 2         | right to left     |
| ()  new                                  | cast  object creation                    | 3         | right to left     |
| *  /  %                                  | multiplicative                           | 4         | left to right     |
| + -  +                                   | additive  string concatenation           | 5         | left to right     |
| << >>  >>>                               | shift                                    | 6         | left to right     |
| <  <=  >  >=  instance of                | relational  type comparison              | 7         | left to right     |
| ==  !=                                   | equality                                 | 8         | left to right     |
| &                                        | bitwise AND                              | 9         | left to right     |
| ^                                        | bitwise XOR                              | 10        | left to right     |
| \|                                       | bitwise OR                               | 11        | left to right     |
| &&                                       | conditional AND                          | 12        | left to right     |
| \|\|                                     | conditional OR                           | 13        | left to right     |
| ?:                                       | conditional                              | 14        | right to left     |
| =   +=   -=  *=    /=   %=  &=    ^=   \|=  <<=   >>= >>>= | assignment                               | 15        |                   |