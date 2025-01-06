# Collections

Swift provides three primary collection types, known as **arrays**, **sets**, and **dictionaries**. 

Arrays – ordered collections of values  
Sets - unordered collections of ***unique*** values  
Dictionaries - unordered collections of ***key-value*** associations

If you create an array, a set, or a dictionary, and assign it to a **variable**, the collection is ***mutable*** (can be changed later on by adding, removing, or changing items in the collection). If the collection is assigned to a **constant**, it is ***immutable*** (its size and contents can't be changed).

No matter what type of collection is created, it is545u always clear about the types of values and keys that can be stored. A value of the wrong type cannot be inserted into a collection.

## Arrays

### Creating an Empty Array

An empty array is created by assigning the constant/variable an empty pair of square brackets ([]).

```Swift
var someInts: [Int] = [] // must indicate type (Int)
// Empty 
```

### Creating Arrays With Default Values

Swift provides an initializer for creating an array of a certain size with **all of its values set to the same default value**:

```Swift
var threeDoubles = Array(repeating: 2.0, count: 3)
// threeDoubles is of type [Double] and equals [2.0, 2.0, 2.0]
```

`repeating` indicates the value to repeat and `count` indicates the number of times that value is repeated in the array.

### Adding Two Arrays Together

You can add two existing arrays with ***compatible*** types with the addition operator (+) to for a new array:

```Swift 
var twoDoubles = Array(repeating: 1.5, count: 2)
// twoDoubles is of type [Double] and equals [1.5, 1.5]

var fiveDoubles = threeDoubles + twoDoubles
// fiveDoubles is of type [Double] and equals [2.0, 2.0, 2.0, 1.5, 1.5]
```

### Creating an Array with an Array Literal

An array can be initialized with an **array literal**, which is a shorthand way to write one or more values as an array collection. An array literal is written as a list of values, separated by commas, surrounded by a pair of square brackets: `[<#value1#>, <#value2#>, <#value3#>]`. E.g.:

```Swift
var toDo: = ["do homework", "shower", "walk dog", "cook dinner"]
// because all values in the array literal are of the same type (String), Swift can infer that [String] is the correct type to use for the toDo variable
```

### Accessing and Modifying an Array

.count – returns the number of items in an array  
.isEmpty – returns true if the array is empty (array.count = 0), false else wise  
.append(_:) – adds a new item to the end of the array  

```Swift
print("The To-Do list contains \(toDo.count) items.")
// Prints "The To-Do list contains 4 items"

if toDo.isEmpty {
    print("The To-Do list is empty.")
} else {
    print("The To-Do list is not empty.")
} // Prints "The To-Do list is not empty."

toDo.append("do the dishes")
// toDo now contains 5 items

toDo += ["workout", "sleep"] // another way to add more items
// toDo now contains 7 items

var firstItem = toDo[0] // retrieves the item at the given index of the array
// firstItem is equal to "do homework"
```

> **Note**  
The first item in the array has an index of 0, not 1. This means the last item in the array has an index of `array.count - 1`. Accessing the value at index `array.count - 1` will result in a runtime error because it is an invalid index.

You can change a range of values at once, even if the replacement set of values has a different length than the range you are replacing:

```Swift
toDo[2...5] = ["eat dinner", "do laundry"] // with the closed range operator, indices 2, 3, 4, 5 are all included
// toDo now contains 5 items
```

.insert(_:at:) – inserts an item into the array at a **specified** index  
.remove(at:) – removes the item at the specified item and ***returns the removed item***  
.removeLast() – removes the last item from the array and ***returns the removed item***
 
```Swift
toDo.insert("clean the house", at: 0)
// toDo now contains 6 items
// "clean the house" is now the first item in the list

let cleanHouse = toDo.remove(at: 0)
// the item that was at index 0 ("clean the house") has just been removed
// toDo now contains 5 items, and no "clean the house"
// the cleanHouse constant is now equal to the removed "clean the house" string

let sleep = cleanHouse.removeLast()
// the last item in the array has just been removed
// toDo now contains 4 items, and no "sleep"
// the sleep constant is now equal to the removed "sleep" string
```

### Iterating Over an Array

You can iterate over the entire set of values in an array with the for-in loop:

```Swift
for item in toDo {
    print(item)
}
// Prints:
// do homework
// shower
// eat dinner
// do laundry
```

.enumerated() – returns a tuple composed of the integer index of each item and its value:

```Swift
for (index, item) in toDo {
    print("Task \(index + 1): \(value)")
}
// Prints:
// Task 1: do homework
// Task 2: shower
// Task 3: eat dinner
// Task 4: do laundry
```
### 2D Arrays

```Swift
// Initializing an empty 2D array:
var array: [[Int]] = []

// Appending to the array:
array.append([1, 2, 3])
array.append([4, 5, 6])
print(array)
// Prints: [[1, 2, 3], [4, 5, 6]]

// Accessing Elements in a 2D Array
let element = array[1][2]
print(element) // Prints 6

// Modifying Elements
array[0][0] = 10
print(array) // Prints [[10, 2, 3], [4, 5, 6]]

// Iterating Over a 2D Array
for rowIndex 0..<array.count {
    for colIndex 0..<array[rowIndex].count {
        print("Element at (\(rowIndex), \(colIndex)) : \(array[rowIndex][colIndex])")
    }
}
```

## Set

You can use a set when the order of items isn't important or when you need to ensure that *an item only appears once*.

A Swift set is written as `Set<Element>`, where element is the **type** that the set is allowed to store.

### Creating and Initializing a Set

```Swift
// Initialing an EMPTY set
var letters = Set<Character>()
print("The variable letters is of type Set<Character> with \(letters.count) items.")
// Prints "The variable letters is of type Set<Character> with 0 items."

// Initializing a set with an array literal
var favGenres: Set<String> = ["Comedy", "Action", "Romance", "Horror"]
// favGenres has been initialized with four initial items 

var favGenres: Set = ["Comedy", "Action", "Romance", "Horror"] // this is also acceptable, but the type Set must be explicitly declared
```

### Accessing and Modifying a Set

***.count*** – returns the number of items in a set  
***.isEmpty*** – returns true if the `count` property is 0 (if the set is empty)  
***.insert(_:)*** – adds a new item into a set (specify the item to be added in the parentheses but no need to specify the index of where it should be added to)  
***.remove(_:)*** – removes the specified item if it's a member of the set, and ***returns the removed value***, or returns `nil` if the set does not contain the specified item (must specify the value of the item to be removed instead of specifying the index of where the item is located)  
***.removeAll()*** – removes all items in a set  
***.contains(_:)*** – returns true if a set contains a specified item

### Iterating Over a Set

The values in a set can be iterated over with a `for-in` loop. Because Swift's Set type doesn't have a defined ordering, to iterate over the values in a specific order, use the `.sorted()` method (returns the set's elements as an array sorted in ascending order):

```Swift
for genre in favGenres.sorted() {
    print(genre)
}
// Prints:
// Action
// Comedy
// Horror
// Romance
// all items are printed in ascending order
```

### Set Operations

***.intersection(_:)*** – creates a new set with only the values common to both sets (`a.intersection(b)`, where a and b are different sets)  
***.symmetricDifference(_:)*** – creates a new set with values in **either** set, but not both (`a.symmetricDifference(b)`)  
***.union(_:)*** – creates a new set with **all values in both sets** (`a.union(b)`)  
***.subtracting(_:)*** – creates a new set with values not in the specified set (`a.subtracting(b)` – new set contains values in a but not in b)

```Swift
let oddNum: Set = [1, 3, 5, 7, 9]
let evenNum: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNum: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted() // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted() // []
oddDigits.subtracting(singleDigitPrimeNum).sorted() // [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNum).sorted() // [1, 2, 9]
```

### Set Membership and Equality

***==*** – determines if two sets contain all of the same values  
***isSubset(of:)*** – determines whether all of the values of a set are contained in the specific set (`a.isSubset(of: b)` returns true if all of a's values are found in b)  
***isSuperset(of:)*** – determines whether a set contains all of the values in a specified set (`a.isSuperset(of: b)` returns true if all of b's values are found in a)  
***isStrictSubset(of:)*** or ***isStrictSuperset(of):*** – determines whether a set is a subset or superset, but not equal to, a specified set (`a.isStrictSuperset(of: b)` returns true if all of b's values are found in a but a != b)
***isDisjoint(with:)*** – determines whether two sets have no values in common

```Swift
let libraryBooks: Set = ["non-fiction", "fantasy", "biography", "romance", "comic", "historical"]
let firstFloor: Set = ["romance", "historical"]
let anotherLibrary: Set = ["science fiction", "children's"]

firstFloor.isSubset(of: libraryBooks) // true
libraryBooks.isSuperset(of: firstFloor) // true
libraryBooks.isDisjoint(with: anotherLibrary) // true
```

## String Indices

Each `String` value has an associated *index type*, `String.Index`, which corresponds to the position of each `Character` in the string. 

Use the `startIndex` property to access the position of the **first** `Character` of a `String`. The `endIndex` property is the position **after the *last*** `Character` in a `String`. 

You can access the indices before and after a given index using the `index(before:)` and `index(after:)` methods. To access an index farther away from the given index, you can use the `index(_:offsetBy:)` method instead. 

```Swift
var message = "We all love winter break!"
message[message.startIndex] // W
message[message.index(before: greenting.endIndex)] // ! (one character before endIndex is the last character)
message[message.index(after: message.startIndex)] // e
let index = message.index(message.startIndex, offsetBy: 7) // l (7 after startIndex, excluding startIndex)
```

Attempting to access an index outside of a string's range or a `Character` at an index outside of the string's range will trigger a ***runtime error***.

To insert a single character into a string at a **specific index**, use the `insert(:at:)` method. This can only be used to insert a **single** character into a string. TO insert the contents of another string (anything longer than one character), you must use the `insert(contentsOf:at:)` method.

```Swift
var message = "hello"
message.insert("!", at: message.endIndex) 
print(message) // Prints "hello!"

message = "hello"
message.insert(contentsOf: " there", at: message.endIndex) // Prints "hello there"

message.insert("!!!", at: message.endIndex) // error. Inserting multiple characters requires the use of contentsOf before the string that is to be inserted.
```

### Dictionary

A dictionary stores keys of the same time associated with values of the same type with no ordering. Each value is associated with a **unique key**, which acts as an identifier for that value within the dictionary. You look up values based on the identifier (key).

The type of a dictionary can be written in shorthand form as `[Key: Value]`, where `Key` is the type of value that can be used as a dictionary key and `Value` is the type of value that the dictionary stores for those keys. (Longhand form: `Dictionary<Key, Value>`).

### Creating an Empty Dictionary

```Swift
let dict: [Int: String] = [:]
// The keys are of type Int and the values are of type String
```

### Initializing a Dictionary with a Dictionary Literal

A dictionary literal is a shorthand way to write one or more key-value pairs as a `Dictionary` collection. The key and value in each key-value pair are separated by a colon. The key-value pairs are written as a list, separated by commas, surrounded by a pair of square brackets: `[<#key1#>: <#value1#>, <#key2#>: <#value2#>, <#key3#>: <#value3#>]`. For example:

```Swift
var schoolBoards: [String: String] = ["TDSB": "Toronto District School Board", "YRDSB": "York Region District School Board"]
```

### Accessing and Modifying a Dictionary

***.count*** – returns the number of items in a `Dictionary`  
***.isEmpty*** – returns true if the dictionary is empty (.count returns 0)  

You can add a new item to a dictionary by using a new key of the appropriate type as the index and assigning a new value of the appropriate type:

```Swift
schoolBoards["YRCDSB": "York Region Catholic District School Board"]
```

You can also change the value associated with a particular key by indexing the key that you want to change the value of:

```Swift
schoolBoards["YRCDSB"] = "York Region Catholic DSB"
```

You can also **set or update** the value for a particular key using `updateVlaue(_:forKey:)`. This method sets a value for a key if none exists, or updates the value if that key already exists. This method ***returns the old value after performing an update.***

However, this method returns an **optional value** of the dictionary's value type. The optional value contains the old value for that key if one existed before the update, or `nil` if no value existed:

```Swift
let oldValue = schoolBoards.updateValue("York Region Catholic District School Board", forKey: "YRCDSB")
print("The old value for YRCDSB was \(oldValue!).")
// Prints "The old value for YRCDSB was York Region Catholic DSB."
```

When retrieving a value from a dictionary for a particular key and assigning it to a variable/constant, the type of this variable/constant is optional. This is because it is possible to request a key for which no value exists, which will cause the dictionary to return `nil`.

You can **remove** a key-value pair from a dictionary by assigning a `nil` value for that key:

```Swift
schoolBoards["YRDSB"] = "Your Reports Don't Show Brilliance"
schoolBoards["YRDSB"] = nil
// YRDSB has been removed from the dictionary
```

You can also remove a key-value pair from a dictionary with the `removeValue(forKey:)` method. This method removes the key-value pair if it exists and ***returns the removed value***, or ***returns `nil` if no value existed*** (This means the returned value has an optional type):

```Swift
let removedValue = schoolBoards.removeVlaue(forKey: "TDSB")
print("The removed school board's name is \(removedValue!).")
```

### Iterating Over a Dictionary

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

You can also retrieve an iterable collection of a dictionary's keys or values by accessing its keys and values by accessing its `keys` and `values` properties:

```Swift
for schoolBoardAcro in schoolBoards.keys {
    print("School Board Acronym: \(schoolBoardAcro)")
} // schoolBoard.keys is an array that contains all the keys in the schoolBoard dictionary

for schoolBoardFullName in schoolBoards.values {
    print("School Board Full Name: \(schoolBoardFullName)")
} // schoolBoard.values is an array that contains all the values in the schoolBoard dictionary
```

If you want to assign a variable/constant to an array containing the dictionary's keys or values:

```Swift
let schoolBoardAcros = [String](schoolBoards.keys)

let schoolBoardFullName = [String](schoolBoards.values)
```