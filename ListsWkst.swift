// 02.01.01

// let array: [Double]

// array = [1.2, 3.23, 4.323, 2312.3, 2342.985, 345.0, 245.234, 126.34, 1276.34, 798.12]

// for num in array {
//     print(num)
// }

// 02.01.02

// import Foundation

// var array: [Int] = [1, 2, 3, 4, 5]
// print("The initial array is \(array)")

// print("Etner an integer to replace the middle element: ", terminator: "")
// let replacement = readLine()
// array[Int(floor(Double(array.count) / 2))] = Int(replacement!)!

// print("The new array is \(array)")

// 02.01.03 a)

// var array: [Int] = []

// for _ in 1...15 {
//     print("Enter an integer to be added to a list: ", terminator: "")
//     let newItem = readLine()
//     array.append(Int(newItem!)!)
// }

// print("Current Array: \(array)")

// print("Enter the position of the element to be replaced (1-15): ", terminator: "")
// let replacementPos = readLine()
// print("Enter an integer to replace the current item: ", terminator: "")
// let replacementNum = readLine()

// array[Int(replacementPos!)! - 1] = Int(replacementNum!)!
// print("New Array: \(array)")

// print("Is the list correct (yes/no): ", terminator: "")
// let confirmation = readLine()

// if confirmation! == "yes" {
//     print("YAY!")
// } else {
//     print("OH NO...")
// }

// 02.01.03 b)
