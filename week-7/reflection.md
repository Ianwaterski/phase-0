Did you learn anything new about JavaScript or programming in general?
Are there any concepts you feel uncomfortable with?
So far I feel pretty comfortable with JavaScript.  I don't know why but with Ruby I had some kind of apprehension, JS on the other hand seems more understandable to me.  Ruby helped me broaden my perspective on coding but so far JS feels pretty simple.

Ch. 1: Values, Types, and Operators
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
One thing thats been notably annoying thus far is == and ===.  In JS comparisons of equal to require three ===, declaration of variables still only requires one though so thats the same.  JS accepts almost all arithmetic expressions.  Things like "5" - 1 will work in JS which will not in Ruby.  All of the boolean operators are the same with the exception of ! which denotes "not" in JS but in Ruby ! is the bang operator for destructive methods.

Ch. 2: Program Structure
What is an expression?
A fragment of code that produces a value.

What is the purpose of semicolons in JavaScript? Are they always required?
Semicolons end statements in JS. The are not always required but for the purpses outlined in the text it recommends using them.

What causes a variable to return undefined?
When the variable is not given a value.

Write your own variable and do something to it in the eloquent.js file.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
console.log allows you to log and display whatever is put into parantheses following it.  It is similar to puts, print, and return in Ruby.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.


Describe while and for loops
While loops continue running until a condition is met, or conversely run while a condition is not met.  For equivalent to while loops, but allow all elements related to the state of the loop to be grouped together.

What other similarities or differences between Ruby and JavaScript did you notice in this section?
Much of the looping logic is similar.  Other than braces and semicolons you could say that even semantically they are similar.

Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.


Ch. 3: Functions (Skip the sections on closure and recursion)

What are the differences between local and global variables in JavaScript?
Local variables are only applicable to the function they are defined in.  Global variables are available anywhere within the program.

When should you use functions?
When you want to use a specific set of statements repetitively.

What is a function declaration?
A function declaration is how a function is defined.  It is much like a variable declaration except that when you declare a function you must include the parameters if there are any.

Complete the minimum exercise in the eloquent.js file.


Ch. 4: Data Structures: Objects and Arrays
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
Dot notation can only be used on acceptable variable names, while bracket notation can be used on anything.  The text uses examples of '0' and 'John Doe' because neither are acceptable variable names and must be referenced with bracket notation.

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

What is a JavaScript object with a name and value property similar to in Ruby?
So far .length has stuck out.  It does the same thing as in Ruby and is called in the same way.