# Loops

### For-In Loops

You use the for-in loop to iterate over a sequence, such as items in an array, range of numbers, or characters in a string. 

For example:
```Swift
let names = ["Grace", "Anna", "Keegan", "Mo", "Vijay"]
for name in names {
    print("Hello \(name)")
}
// name is a constant whose value is automatically set at the start of each iteration of the loop. It deos not have be be declared before being used. It is implicitly declared simply by its inclusion in the loop declaration, without the need for a let declaration keyword.
```

### Range Operators

The **closed range operator** (`a...b`) defines a range that runs from a to b, **including** the values a and b. The value of a *must not be greater than* b

The closed range operator is useful when iterating over a range in which you want all of the values to be used:

```Swift
for x in 1...3 {
    print("\(x) times 5 is \(x * 5)")
}
// Prints:
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
```

The **half-open range operator** (`a..<b`) defines a range that runs from a to b, including a but **excluding b**. The value of a *must not be greater than* b. If the value of a is *equal* to b, the range will be **empty**. 

The **one-sided range operator** only has a value on one side. The other side continues as far as possible in one direction:

```Swift
let names = ["Grace", "Mo", "Keegan", "Vijay"]
for name in names[2...] {
    print(name)
}
// Prints:
// Keegan
// Vijay
// The range starts from index 2 of the array and goes up to the end of the array.

for name in names[...2] {
    print(name)
}
// Prints:
// Grace
// Mo
// Keegan
// The range starts from the beginning of the array and goes up to index 2.

for name in names[..<2] {
    print(name)
}
// Prints:
// Grace
// Mo
// The half-open range operator is used with the one-sided form that is written with its final value (...a, so the final value is NOT part of the range.
```

You cna also check whether a one-sided range contains a particular value:

```Swift
let range = ...5
range.contains(7) // false
range.contains(-1) // true
range.contains(5) // false
```

If you want to iterate through intervals (e.g. use every 5 of a range of numbers), use the `stride(from:to:by:)` function to skip the unwanted numbers:

```Swift
for i in stride(from: 0, to: 15, by: 5) {
    print(i, terminator: " ")
}
// Prints: 0, 5, 10
// First number (0) inclusive, last number (15) non-inclusive
```

Accessing intervals is also possible with closed ranges (that is, the last number is also inclusive), using `stride(from:through:by:)`:

```Swift
for i in stride(from: 0, through: 15, by: 5) {
    print(i, terminator: " ")
}
// Prints: 0, 5, 10, 15
// First number (0) inclusive, last number (15) inclusive
```

### Back to For-In Loops

The underscore character (_) can be used in place of a loop variable if each value from the sequence is not needed. Using the underscore character causes the individual values to be ignored and doesn't provide access to the current value during each iteration of the loop. In this case, the code simply executes the loop the correct number of times:

```Swift
For example:
```Swift
let base = 3
let exponent = 3
var answer = 1
for _ in 1...exponent {
    answer *= base
}
print("\(base) to the exponent of \(exponent) is \(answer)")
// Prints "3 to the exponent of 3 is 27"
```

### While Loops

A `while` loops performs a set of statements **until a condition becomes** `false`. These kinds of loops are best used when the **number of iterations is unknown** before the first iteration begins. There are two kinds of `while` loops in Swift:
1. `while` evaluates its condition at the ***start** of each pass through the loop.
2. `repeat-while` evaluates its condition at the ***end*** of each pass through the loop. 

#### While Loop

A `while` loop starts by evaluating a **single** condition. If the condition is `true`, a set of statements is repeated until the condition becomes `false`:

```Swift
while <#condition> {
    <#statement>
}
```

After each execution, the loop's condition is checked to see if the loop should be executed again. The loop is executed until a particular condition is satisfied. 

#### Repeat-While

A `repeat-while` statement allows a block of code to be executed one or more times, as long as a condition remains true. This is the syntax of a `repeat-while` statement:

```Swift
repeat {
    <#statements#>
} while <#condition#>
// The program executes the statements, and then the condition is evaluated. If true, execution returns to step 1. If fals,e the program is finished executing the repeat-while statement.
```

Becuase the value of the condition is evaluated ***after*** the statements are executed, the statements in a `repeat-while` statement are executed **at least once**. The value of the condition must be of type `Bool`.

```Swift
// While loop
var number = 1

while number <= 5 {
    print(number)
    number += 1
}

// Repeat-while loop
var input: String
repeat {
    print("Enter a command", terminator: " ")
    input = readLine() ?? ""
} while input != "exit"
// An input is asked for at least once, and the program keeps asking for inputs until the user enters "exit"
```

### Continue Keyword

The `continue` statement tells a loop to stop what it's doing and *start again* at the beginning of the *next iteration* through the loop:

```Swift
let puzzle = "i want to go skiing!"
var codedPuzzle = ""
for letter in puzzle { // Loops through every character in the string
    if (letter == "i") || (letter == " ") {
        continue
    } else {
        codedPuzzle += String(letter)
    }
}
print(codedPuzzle)
// Prints: wanttogoskng!
// All the i's and spaces in the original message have been removed.
```

The code above calls the `continue` keyword whenevr it matches an "i" or a space, causing the current iteration to end immediately and to jump straight to the start of the next iteration.

### Break Keyword

The `break` statement **ends execution** immediately inside a loop statement. It is useful when you want to terminate the execution earlier than would otherwise.

When used insdie a loop statement, `break` ends the loop's execution immediately and transfers control to the code after the loop's closing brace (}). No further code from the current iteration of the loop is executed, and no further iterations of the loop are started:

```Swift
let puzzle = "i want to go skiing!"
var codedPuzzle = ""
for letter in puzzle { // Loops through every character in the string
    if (letter == "t") {
        break
    } else {
        codedPuzzle += String(letter)
    }
}
print(codedPuzzle)
// Prints: i wan
// As soon as a "t" is reached, the entire loop is terminated.
```

In Swift, you can **nest** loops and conditional statements inside other loops and conditional statements. In such cases, it can be useful to be explicit about which loop/conditional statement to terminate (using the `break` or `continue` keywords).

To do so, mark a loop statement or conditional statement with a **statement label**. In a conditional statement, the statement label can be used with the `break` statement to end the execution of the labeled statement. In a loop statement, the statement label can be used with the `break` or `continue` statement to end or conitnue the execution of the labeled statement. 

A labeled statement is indicated by placing a label on the **same line** as the statement's introducer keyword, followed by a colon:

```Swift
<#label name#>: while <#condition#> {
    <#statements#>
}
```

```Swift
outerLoop: for row in 1...3 {
    for column in 1...3 {
        print("Processing cell (\(row), \(column))")
        if row == column {
            print("Skipping when row and column are equal: \(row), \(column)")
            continue outerLoop // Skip to the next iteration of the outer loop
        }
        
        if row + column > 4 {
            print("Breaking out of both loops at: \(row), \(column)")
            break outerLoop // Exit both loops entirely
        }
    }
}
// Prints:
// Processing cell (1, 1)
// Skipping when row and column are equal: 1, 1
// Processing cell (2, 1)
// Processing cell (2, 2)
// Skipping when row and column are equal: 2, 2
// Processing cell (3, 1)
// Processing cell (3, 2)
// Breaking out of both loops at: 3, 2
```

# Functions

Functions are code that perform a specific task. It has a name that is used to "call" the function to perform its task when needed. Every function in Swift has a type, consisting of the function's parameter types and and return type. 

### Defining and Calling Functions

When a function is defined, you can ***optionally*** define one or more named, typed values that the function takes a input, know as **parameters**. You can also ***optionally*** define a type of value that the function will pass back as output when it's done, know as its **return** type. 

When you call a function with its name that was assigned to the function, you also pass it input values (known as **arguments**) that match the types of the function's parameters. **The arguments must be provided to the function in the same order as the function's parameter list**.

```Swift
func greet(person: String) -> String { // "func" keyword to define a function
// one input parameter – a String value called person
// a return type of String containing a greeting for that person
    let greeting = "Hello " + person + "!"
    return greeting
}
// the function's return type is indicated with the return arrow -> (a hyphen followed by a right angle bracket) followed by the name of the type to return

print(greet(person: "Grace")) // calling the function, this will print the return value of the function
// Prints: "Hello Grace!"
```

In the example above, the function is called by passing it a `String` value after the `person` argument label, such as `greet(person: "Grace")`. Because the function **returns a `String` value**, `greet(person)` can be wrapped in a call to the `print(_:separator:terminator:)` function to print the return value.

You can call the `greet(person:)` function multiple times with **different input values**. Here is another way to write the function and print the same results:

```Swift
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

print(greetAgain(person: "Grace"))
// Prints "Hello again, Grace!"
```

### Functions Without Parameters

A function ***without*** parameters still needs parentheses after the function's name. When called, the fucntion name is also followed by an empty pair of parentheses. 

### Functions With Multiple Parameters

Functions can have **multiple parameters**, all contained within the function's parentheses and separated by commas:

```Swift
func checkIn(guest: String, alreadyCheckedIt: Bool) -> String {
    if alreadyCheckedIn {
        return greetAgain(person: guest)
    } else {
        return greet(person: guest)
    }
}
// This function takes two parameters
```

### Functions Without Return Values

Functions aren't required to define a return type. Here is an example:

```Swift
func greet(person: String) {
    print("Hello " + person + "!")
}
greet(person: "Grace") // Prints "Hello Grace!"
```

Because it doesn't need to return a value, the function's definition doesn't include the return arrow (->) or a return type.

### Functions With Multiple Return Values

You can use return multiple values as a compound return type such as an array or a tuple. In the function's definition, you need to specify the type of each return value:

```Swift
func minMax(array: [Int]) -> (min: Int, max: Int) { // the tuple's members are specified as part of the function's return type (min, max)
    var currentMin = array[0]
    var currentMax = array[0]
    for num in array[1..<array.count] {
        if num < currentMin {
            currentMin = num
        } else if num > currentMax {
            currentMax = num
        }
    }
    return (currentMin, currentMax) // return values stored in an array
} // The return values are labeled min and max so they can accessed by name
```

The tuples's values are named as part of the function's return type and can be accessed with **dot syntax** to retrive the min and max found values:

```Swift
let range = minMax(array: [-2, 3, 7, -10, 15])
print("Min is \(range.min) and max is \(range.max)")
// Prints "Min is -10 and max is 15"
```

### Optional Tuple Return Types

If the tuple type to be returned from a function has the potential to have "no value" for the entire type, use an ***optional*** tuple type to reflect that the entire tuple can be `nil`. Write a question mark (?) after the tuple type's closing parenthesis, such as `(Int, Int)?` to write an optional tuple return type. This is useful for erry handling:

```Swift
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
}
```

### Function Argument Labels and Parameter Names

Each function parameter has both an **argument label**  (used when calling the function) and a **perameter name** (used in the implementation of the function). By default, parameters use their parameter name as their argument label unless otherwise specified.

### Specifying Argument Labels

Write an argument label before the parameter name, separated by a space:

```Swift
func someFunction(argumentLabel parameterName: Int) {
    // argumentLabel is the argument label, parameterName is the parameter name
}

// Ex:
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet(person: "Grace", from: "New York"))
// Prints: "Hello Grace! Glad you could visit from New York."
// person is both the argument label and the parameter name (this is by default); from is the argument label and hometown is the parameter name. only from is needed when calling the function
```

### Ommitting Argument Labels

If you don't want an arugument label for a parameter, write an underscore(_) instead of an explicit argument label for that parameter.

```Swift
func someFunction(_ firstName: String, lastName: String) {
}
someFunction("Grace", lastName: "She")
```

### Default Parameter Values

You can define a ***default value*** for any parameter in a function by assigning a value to the paramter after that parameter's type. If a default value is defined, you can **omit** that parameter when calling the function:

```Swift
func someFunction(_ firstName: String, lastName: String = "She") {
}
someFunction("Grace") // lastName is "She"
```

### In-Out Parameters

By default, function parameters are constants. Trying to change the value of a function parameter from within the body of that function results in a compile-time error. 

If you want to modify a parameter's value, and you want those changes to persist after the function call has ended, define that parameter as an ***in-out parameter***. You can **only pass a variable** as the argument for an in-out parameter – no constants or literal values allowed, because a constant or a literal value cannot be modified.

Place the `inout` keyword right before a paramter's type. Place an ampersand (&) directly before a variable's when you pass it as an argument to an in-out parameter:

```Swift
func someFunction(_ firstName: inout String, lastName: String = "She") {
}
var currentFirstName = "Grace"
someFunction(&currentFirstName) // lastName is "She"
```

### Random Numbers

In order to generate a random number in Swift, simply call the `.random()` method on numeric types:

```Swift
let randomInt = Int.random(in: 0..<6) // generates a random integer between 0 and 6, not including 6
let randomDouble = Double.random(in: 2.32124...3.14152) // generates a random floating point number between 2.32124 and 3.14152, inclusive
let randomeBool = Bool.random() // generates a random Boolean value. Notice that this does not need "in:"
```