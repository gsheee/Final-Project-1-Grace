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

The **half-open range operator** (`a..<b`) defines a range that runs from a to b, including a but **excluding b** – it contains its first value but not its final vlaue. The vsalue of a *must not be greater than* b. If the value of a is *equal* to b, the range will be **empty**. 

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

A `repeat-while` statement allows a block of code to be executed one or more times, as long as a condition remians true. This is the syntax of a `repeat-while` statement:

```Swift
repeat {
    <#statements#>
} while <#condition#>
// The program executes the statements, and then the condition is evaluated. If true, execution returns to step 1. If fals,e the program is finished executing the repeat-while statement.
```

Becuase the value of the condition is evaluated ***after*** the statements are executed, the statements in a `repeat-while` statement are executed **at least once**. The value of the condition must be of type `Bool`.

GIVE EXAMPLES???

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

EXAMPLEEEEEE

should i talk about defer??

# Functions