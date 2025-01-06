// 03.03.02

import Foundation

var pricePerCopy: Double = 0.0
var totalPrice: Double = 0.0

print("Enter the number of copies to be printed:", terminator: " ")
let numCopies = readLine()

if Int(numCopies!)! <= 499 {
    pricePerCopy = 0.30
} else if Int(numCopies!)! <= 749 {
    pricePerCopy = 0.28
} else if Int(numCopies!)! <= 999 {
    pricePerCopy = 0.27
} else if Int(numCopies!)! <= 1000 {
    pricePerCopy = 0.25
}

totalPrice = pricePerCopy * Double(numCopies!)!

print("""
Number of Copies: \(numCopies!) copies
Price Per Copy: $\(pricePerCopy)/copy
Total Price: $\(String(format: "%.2f", totalPrice))
""")

// 03.03.03

print("Enter your letter grade (A/B/C/D/E): ", terminator: "")
let letterGrade = readLine()

if (letterGrade! == "A") {
    print("Your grade ranges from 80 - 100.")
} else if (letterGrade! == "B") {
    print("Your grade ranges from 70 - 79.")
} else if (letterGrade! == "C") {
    print("Your grade ranges from 60 - 69.")
} else if (letterGrade! == "D") {
    print("Your grade ranges from 50 - 59.")
} else if (letterGrade! == "E") {
    print("Your grade ranges from 0 - 49.")
} else {
    print("Invalid letter grade.")
}