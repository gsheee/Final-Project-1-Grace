// 02.02.01

import Foundation

print(2 * 3)
print(2 + 3 * 5)
print((2 + 13) / 5)
print(pow(2, 5))
print(7 / 3 - 1)
print((7 - 12) / (6 - 1))

// 02.02.01
// let pi = Double(String(format: "%.2f", Double.pi))
// let radius: Double = 15 // Must be a Double in order to perform arithmetic operations with other Double types
// let circumference = 2.0 * pi! * radius
// print(circumference)

let pi = Double(String(format: "%.2f", Double.pi))
let radius: Double = 15 // Must be a Double in order to perform arithmetic operations with other Double types
let circumference = 2.0 * pi! * radius
print("The circumference is \(circumference) cm.")

// 02.02.03

let firstJump = 3.3
let secondJump = 4.0
let thirdJump = 3.0
let averageJumpLength = (firstJump + secondJump + thirdJump) / 3
print("The average jump length of the athlete is around \(String(format: "%.2f", averageJumpLength)) m.")