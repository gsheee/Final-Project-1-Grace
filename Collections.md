# Collections

### String Indices

Each `String` value has an associated *index type*, `String.Index`, which corresponds to the position of each `Character` in the string. 

Use the `startIndex` property to access the position of the **first** `Character` of a `String`. The `endIndex` property is the position **after the *last*** `Character` in a `String`. 

You can access the indices before and after  given index using the `index(before:)` and `index(after:)` methods. To access an index farther away from the given index, you can use the `index(_:offsetBy:)` method instead. 

```Swift
var message = "We all love winter break!"
message[message.startIndex] // W
message[message.index(before: greenting.endIndex)] // ! (one character before endIndex is the last character)
message[message.index(after: message.startIndex)] // e
let index = message.indeax(message.startIndex, offsetBy: 7) // l (7 after startIndex, excluding startIndex)
```

Attempting to acces an index outside of a string's range or a `Character` at an index outside of string's range will trigger a ***runtime error***.

To insert a single character into a string at a **specific index**, use the `insert(:at:)` method. This can only be used to insert a **single** character into a string. TO insert the contents of another string (anything longer than one character), you must use the `insert(contentsOf:at:)` method.

```Swift
var message = "hello"
message.insert("!", at: message.endIndex) 
print(message) // Prints "hello!"

message = "hello"
message.insert(contentsOf: " there", at: message.endIndex) // Prints "hello there"

message.insert("!!!", at: message.endIndex) // error. Inserting multiple characters requires the use of contentsOf before the string to be inserted.
```




### Dictionary




You can iterate over a dictionary to access its key-value pairs. Each item in the dictionary is returned as a (`key, value`) tuple when the dictionary is iterated:

```Swift
let numOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numOfLegs {
    print("\(animalName) have \(legCount) legs.")
}
// Prints:
// spiders have 8 legs
// ants have 6 legs
// cats have 4 legs
```