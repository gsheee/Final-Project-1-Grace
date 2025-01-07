// 1)

// import Foundation

// func maxNum(num1: Int, num2: Int, num3: Int) -> Int {
//     return max(num1, num2, num3)
// }

// func main() {
//     print("Enter the first number: ", terminator: "")
//     let firstNum = readLine()
//     print("Enter the second number: ", terminator: "")
//     let secondNum = readLine()
//     print("Enter the third number: ", terminator: "")
//     let thirdNum = readLine()

//     let maximum = maxNum(num1: Int(firstNum!)!, num2: Int(secondNum!)!, num3: Int(thirdNum!)!)
//     print("The maximum number out of \(firstNum!), \(secondNum!), and \(thirdNum!) is \(maximum).")
// }

// main()

// 2)

// func inRange(num: Int) -> String {
//     let range = 1..<100
//     if range.contains(num) {
//         return "\(num) is within the range of 0 to 100, exclusive"
//     } else {
//         return "\(num) is NOT within the range of 0 to 100, exclusive"
//     }
// }

// func main() {
//     print("Enter any integer: ", terminator: "")
//     let number = readLine()
//     print(inRange(num: Int(number!)!))
// }

// main()

// 3)

// func printing(times: Int, message: String) {
//     for _ in 1...times {
//         print(message)
//     }
// }

// func main() {
//     print("Enter any phrase to be printed: ", terminator: "")
//     let printMsg = readLine()
//     print("Enter the desired number of times for the phrase to be printed: ", terminator: "")
//     let numTimes = readLine()
//     printing(times: Int(numTimes!)!, message: printMsg!)
// }

// main()

// 4)

// import Foundation

// func shape(num: Int, character: String, bool: String) {
//    var line = ""
//    if bool == "true" {
//     for _ in 1...num {
//         line += character
//         print(line)
//     }
//    } else if bool == "false" {
//     for i in 1...num {
//         line += character
//         if i >= Int((ceil(Double(num)/2))) {
//             print(line)
//         }
//     }
//    }
// }

// print("Enter the base of the shape: ", terminator: "")
// var base = readLine()
// print("Enter the character that will be printed (e.g. *, &, #): ", terminator: "")
// var char = readLine()
// print("Enter true for a right triangle, enter false for a cropped triangle: ", terminator: "")
// var boolean = readLine()

// shape(num: Int(base!)!, character: char!, bool: boolean!)


// func christmasTree(num: Int, character: String, bool: String) {
//     var line = ""
//     if bool == "true" {
//         outerLoop: for i in 1...4 {
//             if i == 1 {
//                 line += character
//                 print(line)
//                 continue
//             }
//             if i == 4 {
//                 while line.count != num {
//                     line += character
//                     if line.count == num {
//                         print(line)
//                         break outerLoop
//                     }
//                 }
//                 print(line)
//             }
//             for _ in 1...num/3 {
//                 line += character
//             }
//             print(line)
        
//         }
//     } else if bool == "false" {
//         for _ in 1...Int((ceil(Double(num)/2))) {
//             line += character
//         }
//         print(line)
//         outerLoop: for i in 1...3 {
//             if i == 3 {
//                 while line.count != num {
//                     line += character
//                     if line.count == num {
//                         print(line)
//                         break outerLoop
//                     }
//                 }
//                 print(line)
//                 break outerLoop
//             }
//             for _ in 1...Int((num/2) / 4 ) {
//                 line += character
//             }
//             print(line)
//         }
        
//     }
// }



// print("Enter the base of the shape (must be >= 8): ", terminator: "")
// base = readLine()
// print("Enter the character that will be printed (e.g. *, &, #): ", terminator: "")
// char = readLine()
// print("Enter true for a right triangle, enter false for a cropped triangle: ", terminator: "")
// boolean = readLine()

// christmasTree(num: Int(base!)!, character: char!, bool: boolean!)

// 5)

// import Foundation

// func codeValue(letter: String) -> Double {
//     var cost: Double = 0
//     if letter == "I" {
//         cost = 1.50
//     } else if letter == "S" {
//         cost = 2.50
//     } else if letter == "T" {
//         cost = 5.50
//     } else if letter == "W" {
//         cost = 12.50
//     }
//     return cost
// }

// print("Enter the code (I/S/T/W): ", terminator: "")
// let code = readLine()
// let cost = codeValue(letter: code!)
// print("The cost associated with the code rating \(code!) is $\(String(format: "%.2f", cost)).")

// 6)

// import Foundation

// func centrifugalForce(m: Double, aV: Double, r: Double) -> String {
//     let force: Double = m * (pow(aV, 2) / r)
//     return String(format: "%.2f", force)
// }

// print("Enter the mass (kg): ", terminator: "")
// let mass = readLine()
// print("Enter the angular velocity (in rpm): ", terminator: "")
// let angularVelocity = readLine()
// var radii: Double = 10.0
// while radii <= 100 {
//     print("The centrifugal force for a mass of \(mass!) kg, radii of \(radii) m, and angular velocity of \(angularVelocity!) rpm is \(centrifugalForce(m: Double(mass!)!, aV: Double(angularVelocity!)!, r: radii)) N.")
//     radii += 5.0
// }