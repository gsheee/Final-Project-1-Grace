# Decisions (conditional statements) & Boolean Operators

## If Statements

```Swift
var userIsStudent = true

if userIsStudent == true {
    print("User is a student")
}
// {} is a closure; code inside it will only run when the if statement is true. Since userIsStudent is true, the if statement is satisfied and "User is a student" will be printed
```

Another way to write `if userIsStudent == true {}` is to write `if userIsStudent {}`

## Else Statements

If the statement is satisfied, the code under the if statement will run. Otherwise, you can add "else" after the if statement code block, which will run in all other cases.

```Swift
var userIsStudent = false

if userIsStudent == true {
    print("User is a student")
} else {
    print("User is NOT a student")
}
// Prints "User is NOT a student"
```

## Logical Operators

Logical NOT operator`(!a)` inverts a Boolean value so `true` becomes `false` and vice versa:

```Swift
let permission = false
if !permission {
    print("Permission Granted")
}
// Prints "Permission Granted"
```

The phrase `if !permission` can be read as "if not permission". The subsequent line is only executed if "not permission" is `true`; that is, if `permission` is `false`.

Logical AND operator `(a && b)` requires both expressions to be `true` for the overall expression to be `true`:

```Swift
let permission1 = true
let permission2 = false
if permission1 && permission2 {
    print("PERMISSION GRANTED")
} else {
    print("PERMISSION DENIED")
}
// Prints "PERMISSION DENIED"
```

Logical OR operator `(a || b)` can be used to create expressions where only *one* of the two values needs to be `true` in order for the overall expression to be `true`:

```Swift
let permission1 = true
let permission2 = false
if permission1 || permission2 {
    print("PERMISSION GRANTED")
} else {
    print("PERMISSION DENIED")
}
// Prints "PERMISSION GRANTED"
```

The first `Bool` value (`permission1`) is `true`. Because one value is `true`, it doesn't matter that the second `Bool` value (`permission2`) is `false`; the overall expression evaluates to `true`.

You can combine multiple logical operators to create longer compound expressions. The logical operators `&&` and `||` are evaluated from left to right. Thus, it is **useful** to include parentheses even if they are not strictly needed, with the intention of making a complex expression easier to read.

## Comparison Operators

"==" equal to (a == b)  
"!=" not equal to (a != b)  
">" greater than (a > b)  
"<" less than (a < b)  
">=" greater than or equal to (a >= b)  
"<=" less than or equal to (a <= b)  

Each of the comparison operators returns a `Bool` value to indicate whether or not the statement is true:

```Swift
2 == 2 // Returns true b/c 2 IS equal to 2
2 != 1 // Returns true b/c 2 IS NOT equal to 1
2 > 1 // Returns true b/c 2 IS greater than 1
2 < 1 // Returns false b/c 2 IS NOT less than 1
1 > 1 // Returns true b/c 1 IS greater than  or equal to 1
2 < 1 // Returns false b/c 2 IS NOT less than or equal to 1
```

The < and > operators **CANNOT** be applied to `Bool` values. In other words, `Bool` values cannot be compared. 

## Ternary Conditional Operator

The **ternary conditional operator** has three parts and takes the form `question ? answer1 : answer2`. It is a **shortcut** for carrying out one of two expressions based on whther `question` is true or false. If `question` is true, it evaluates `answer1` and returns its value; otherwise, it evaluates `answer2` and returns its value. This is what the structure looks like:

```Swift
if question {
    answer1
} else {
    answer2
}
```

Example: 
```Swift
// longhand
let currentMark = 50
let examPassed = true
let finalMark : Int // declared but not assigned a value yet
if examPassed {
    finalMark = currentMark + 50
} else {
    finalMark = currentMark + 20
}
// Becuase examPassed is true, finalMark is equal to 100

// shorthand
let currentMark = 50
let examPassed = true
let finalMark = currentMark + (examPassed ? 50 : 20)
// finalMark is equal to 100
```

## Else If 

If the initial condition of the if-statement is not satisfied, it can test out another condition written by `else if`. The `else-if` statement is written before `else`:

```Swift
if question1 {
    answer1
} else if question2 {
    answer2
} else {
    answer3
}
```

## Nested Ifs

**Nested if statements** are if statements placed inside another if statement. This is useful when you need to make more complex decisions based on multiple conditions.

```Swift
if <#condition1#> {
    if <#conditions#> {
        <#statements#>
    } else {
        <#statements#>
    }
} else {
    <#statements#>
}

// Example:
let x = 41
if x > 10 {
    if x > 20 {
        print("Above 20")
    } else {
        print("Above 10, below 20")
    }
} else {
    print("Below 10")
}
// Prints "Above 20"
```

The outer `if` is evaluated first. The inner `if` is ***only*** evaluated if the outer `if` condition is `true`. Tips for using nested `if` statements:

- Avoid having too many levels of nested ifs – this makes the code hard to read. Try to use logical operators (&&, ||) when possible.
- Make sure the nested if is absolutely necessary and cannot be replaced with an `else if` statement.

## Switch

A `switch` statement considers a value and compares it against several possible matching patterns. 
It then executes an appropriate block of code based on the ***first pattern that matches successfully***. 
It's an alternative to the `if` statement for responding to multiple potential states.

A `switch` statement compares a value against one or more values of the ***same type***:

```Swift
switch <#some value to consider#> {
case <#value 1#>:
    <#respond to value 1#>
case <#value 2#>, <#value 3#>:
    <#respond to value 2 or value 3#>
default:
    <#otherwise, do something else#>
}
```

In every `switch` statement, every possible value of the type being considered must be matched by one of the `switch` cases. If it's not appropriate to provide a case for every possible value, define a default case to cover any values that aren't addressed explicitly: this is indicated by the `default` keyword and must appear LAST.

```Swift
// This example uses a switch statement to consider a single lowercase character
let someCharacter: Character = "z"
switch someCharacter {
case "a", "A":
    print("The first letter of the Latin alphabet") // a single case that matches both "a" and "A" – a compound case
case "z":
    print("The last letter of the Latin alphabet")
default:
    print("Some other character")
}
// Prints: "The last letter of the Latin alphabet"
```

### Value Bindings

A `switch` case can name the value it matches to **temporary constants or variables** for use in the body of the case. This is known as ***value binding***:

```Swift
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis when an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"
// In the first case, the point's x value is assigned to the temporary value x
// In the second case, the point's y value is assigned to the temporary value y
```

### Where

A `switch` case can use a `where` clause to check for additional conditions:

```Swift
let anotherPoint = (2, 0)
switch anotherpoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x = y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x = -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(2, 0) is just some arbitrary point"
// the case only matches if the where clause's condition evaluates to true for that value
```

### Break in Switch Cases

When used inside a `switch` statement, the `break` keyword causes the statement to end its execution immediately. Because empty cases are not allowed, this can used to deliberately match and ignore a case:

```Swift
let anotherPoint = (2, 0)
switch anotherpoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x = y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x = -y")
case let (x, y):
    break
} // nothing is printed
```
