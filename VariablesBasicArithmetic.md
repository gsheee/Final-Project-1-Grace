# Variables & Basic Arithmetic (operators, data types)

### Naming Conventions
Use **Camel Case** when writing in Swift - the first word is lowercased and then the first character in every following word is uppercased 

use **let** to assign a value to a variable

```Swift
// notice that all letters in "name" are lowercased and the first character in the follwoing word, "S", is uppercased
let nameStudent = "Grace She"
let thisIsWhatCamelCaseLooksLike = "Hello, world!"
``` 

### Comments

Use comments to include nonexecutable text in your code, as a note or reminder to yourself. These lines are ignored by the Swift compiler when the code is compiled.

There are two ways to write comments in Swift  
1. **begin** with // to write single line comments
2. multi-line comments start with /* and end with */

```Swift
// This is a comment

/* 
This is also a comment
but is written over multiple lines! */
```

Multi-line comments in Swift can be nested inside other multi-line comments. This si written by starting a multi-line comment block and then starting a second multi-line comment wihtin the first block. The second block is the close, followed by the first block:

```Swift
/* This is the start of the first multi-line comment.
    /* This is the second, nested multi-line comment/ */
This is the end of the first multi-line comment. */
```

### Syntax/Data Types

Swift provides many fundamental data types: `Int` for integers, `Double`/`Float` for floating-point variables (any valid number that contains a decimal point), `Bool` for Boolean values (true/false), `String` for text, `Date` for the date.

E.g.:
```Swift
let anInt = 10 // This is an integer
let aBool = true // This is a boolean
let aDouble = 1.2 // This is a floating-point number (used for calculations because it's more precise)
let aFloat = 2.3 // This is also a floating-point number
let aStr = "Hello, World" // This is a text
let aDate = Date() // This is then date and time
```

Casting Data Types:
```Swift
let anInt = 10 // This is an integer
let aDouble = 1.8 // This is a floating-point number

let new = Double(anInt) // new value is 10.0
let new1 = String(aDouble) // new value is "1.2"
let new2 = Int(aDouble) // new value is 1
```

To check what type a variable is, use `type(of:)`:
```Swift
print(type(of: new)) // Prints: Double
print(type(of: new1)) // Prints: String
print(type(of: new2)) // Prints: Int
```

Swift also provides versions of the three primary collection types: `Array, Set, Dictionary`

Swift is a ***type-safe*** language – the langauge helps you to be clear about the types of values your code can work with  
If part of your code requires a `String`, ***type safety*** prevents your from passing it any data type other than `String`. It helps to catch and fix errors as early as possible in the development process.

### Strings and Characters

A **string literal** is a sequence of characters enclosed by **double quotation marks** (""). To write a multi-line string literal, surround the sequence of characters by **three double quotation marks** (""""""):

```Swift
let text = "This is a string"
let text1 = """
This is a multi-line
string
"""
```

If you want to use line breaks to make the code look better but you don't want a line break in the actual `String`, write a **backslash** \ at the end of those lines:

```Swift
let message = """
This is a message \
for you
"""
print(message)
// Prints "This is a message for you"
```

To include special characters in a string literal, you need to **escape them** so they don't interfer with the code. To escape these special characters, write a backslash \ followed by the character to be escaped:  
- \0 (null character)  
- \ \ (backslash)  
- \t (horizontal tab)  
- \n (new line)  
- \" (double quotation mark)
- \' (single quotation mark)

Because multiline string literals use three double quotation marks instead of just one, you can include a double quotation mark (") inside of a multiline string literal without escaping it. However, to include `"""` in a multiline string, escpae at least one of the quotation marks:

```Swift
let message = """
you can escape the first quotation mark \"""
you can also escape all three quotation marks \"\"\"
"""
print(message)
// Prints:
// you can escape the first quotation mark """
// you can also escape all three quotation marks """
```

You can placed a string literal within **extended delimiters** to include special characters without invoking their effect – place the string within quotation marks (") and surround that with number signs (#):

```Swift
var message = "This is a message \nfor you"
print(message)
// Prints:
// This is a message
// for you

message = #"This is a message \n for you"#
print(message)
// Prints:
// This is a message \n for you
// Notice that although there is an escaped character, it is still printed as written due to the extended delimiters (#)

message = #"This is a message \#nfor you"#
print(message)
// Prints:
// This is a message
// for you
// Adding another # after the escape character (\) will still carry out the special effects of a character (in this case, n for new line)
```

There are two ways to create an empty `String` value:
1. Assigning an empty string literal to a variable
2. Initializing a new `String` instance with initializer syntax

```Swift
var emptyString = "" // initialize as empty string
var emptyString1 = String() // initiliazer syntax
```

### Variables

All constants and variables are associated with a name (using **Camel Case!!!**) with a particular data type (such as an integer or a String).

**constants** – values cannot be changed once it's set  
**variable** – can be set to a different value in the future  
**optional types** – handles the absense of a value ("there *is* a value, and it equals *x*" or "there *isn't* a value at all")  

Constants and variables must be declared before they're used. 
The `let` keyword is used to declare constants
and the `var` keyword is used to declare variables.

Values are assigned to variables/constants using the **assignment operator** (=).

```Swift
// Example
let nameOfUser = "Grace She" // this is a constant that holds a String. Its value cannot be changed in the future
var currentGrade = 12 // this is a variable that holds an integer. This value can be changed in the future.
```
This code can be read as:  
"Declare a new constanct called `nameOfUser` and give it a value of `"Grace She"`.
Then, declare a new variable called `currentGrade` and give it an ***initial value*** of 12"  

The name of the user is declared as a constant because the name will never change.
However, the current grade of the user is declared as a variable becuase it will increment after each school year.

```Swift
var currentGrade = 12
currentGrade = 11
// currentGrade is now 11

let nameOfUser = "Grace She"
nameOfUser = "Ms. Marie"
// This is a compile-time error: nameOfUser cannot be changed.
```

You can also assign values to variables and constants later in the program, as long as it's guaranteed to have a value before the time if is read

```Swift
let nameOfUser: String // nameOfUser has no value yet
```

This is ***NOT THE SAME*** as initializing an empty `String`! We initialize an empty string by assigning it a value of "" or using the initializer syntax `String()`, but `: String` simply creates a variable with ***NO VALUE ASSIGNED***

You can declare multiple constants or multiple variables on a single line, separated by commas.
You can also define multiple related variables of the same type on a single line, seperated by commas, with a **single type annotation** after the final variable name

```Swift
var x = 0.0, y = 0.0, z = 0.0 // x, y, z declared in one line
var x, y, z: Double // x, y, z defined on the same line with a single type annotation
```

If the right side of the declaration is a tuple with multiple values, its elements can be broken down into multiple constants or variables at once (we will get into this later):

```Swift
let (x, y) = (1, 2)
// x is equal to 1, y is equal to 2
```

constant and variable names **cannot contain**:
- whitespace characters
- mathematical symbols
- arrows
- cannot begin with a number (numbers can be included elsewhere within the name)

once a constant or variable has been declared as a certain type, it cannot be declared again with the same name or be changed to store values of a different type. A constant also **cannot** be changed into a variable and vice versa. 

You can **print** the current value of a constant or variable with the `print(_:separator:terminator:)` function

```Swift
print(nameOfUser)
// Prints "Grace She"
```

By default, the function terminates the line it prints by adding a line break. You can omit them when you call this function because the `separator` and `terminator` parameters have default values. To print a value without a line break after it, **pass an empty string** as the `terminator` – for example, `print(nameOfUser, terminator: "")`

Swift uses **string interpolation** to include the name fo a constant or vairable as a placeholder in a longer strong. Wrap the name in parentheses and escape it with a backslash between the opening parenthesis. This is similar to "f-strings" in Python.

```Swift
print ("The name of the user is \(nameOfUser)")
// Prints "The name of the user is Grace She"
```

If you want to write multiple separate statements on a single line, use a **semicolon**:

```Swift
let nameOfUser = "Grace She"; print(nameOfUser)
// Prints "Grace She"
```

### Basic Arithmetic Operators

"+" addition (can also be used for `String` concatenation)  
"-" subtraction  
"*" multiplication  
"/" division  

**Remainder operator** (x **%** y) returns the remainder after x is divided by y

Order of operators **does** matter! Follow PEDMAS.

Example:
```Swift
print(1 + 5) // Prints 6
print(5 - 1) // Prints 4
print(1 * 5) // Prints 5
print(10.0 / 5.0) // Prints 2.0
print("hello" + "world") // Prints "hello world"
print(9 % 4) // Prints 1
print(10 - 20 / 4) // Prints 5 
print((10 - 20) / 4) // Prints -5
```

### Compound Assignment Operators

**Compount assignment operators** combine assignment (=) with another operation, for example `a += 2` which is shorthand for `a = a + 2`

### Input

Taking inputs from users allows users to interact with code. A constant is usually assigned to the input so it can be refered back to later on as needed but is non-mutable. 

In Swift, you can take input from users using the `readLine()` function:

```Swift
print("Enter your favourite programming language: ")
let favLanguage = readLine() // This takes input from the user and users will be able to type their answers in the terminal

print("Your favourite programming language is \(favLanguage!)")
// The ! behind the constant forcefully unwraps the name
```

The `readline()` function doesn't return a regular `String`. Instead, ***it returns an optional string***, meaning the variable/constant can either hold a value or be `nil` (if no input is given). When the type is optional, its value can only be directly accessed by forcefully unwrapping it (adding an ! immediately after the variable/constant name). 

Force-unwrapping should only be used when you are 100% certain that the optional contains a value. If the optional is `nil` and you try to forcefully unwrap it, the program will crash. 

If you want the input to be of another data type, cast it to the desired type after it is stored as an optional:

```Swift
print("Enter your favourite number: ")
var input: String? = readLine() // input 12
print("Your fav programming language is \(input!)")

print(type(of: input)) // Prints Optional<String>
let favNum = Int(input!)
print(type(of: favNum)) // Prints Optional<Int>
```

Note that even when the input is casted as an `Int`, the type is `Optional<Int>`. If the string contains valid integer characters, it converts to `Int`. However, if the sting is invalid (contains characters, etc.), it returns `nil`.

### String Formatting

Before we format, we must `import Foundation`. Simply write `import Foundation` at the top of the code.

The basic syntax for using the `String(format:)` method is:

```Swift
let formattedString = String(format: formatString, arguments...)
```

Where "formatString" is the format string that contains the **placeholders and format specifiers**, "argements" is a list of values that will be used to replace the placeholders in the format string. The placeholders in the format string are represented by the "%" character followed by a format specifier:

```Swift
import Foundation

let number = 7
let formattedString = String(format: "%5d", number)
print(formattedString) // Prints "    7"
```

The first number in the format specifier is the width (5) – the minimum number of characters to be printed for the vlaue. If the value is shorter than the width (in this case, 7 is only one digit which is shorter than the width of 5), whitespaces will be added to the left/right of the value. In this example, 7 is only one character, so in order to satisfy the requested 5 characters of the string, 4 whitespaces are added to the left.

```Swift
import Foundation

let number = 7.18273457
let formattedString = String(format: "%.2f", number)
print(formattedString) // Prints "7.18"
```

The dot and the number following (.2) represents the number of the digits to appear after the decimal point for floating-point numbers. In this example, the number of digits after the decimal point is set to 2, so only two digits of the originla value of 7.18273457 are included. 

```Swift
import Foundation

let number = 3.1415926
let formattedString = String(format: "%7.3f", number)
print(formattedString) // Prints "  3.141"
let formattedString = String(format: "%5.3f", number)
print(formattedString) // Prints "3.141" – all five digits are taken up, no whitespaces needed
```