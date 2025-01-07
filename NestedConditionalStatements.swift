// 03.04.01

var message: String
var beep: Bool
var spin: Bool

print("Does computer beep on startup (yes/no): ", terminator: "")
var beeping = readLine()
if beeping! == "yes" {
    beep = true
} else {
    beep = false
}

print("Does hard drive spin (yes/no): ", terminator: "")
var spinning = readLine()
if spinning! == "yes" {
    spin = true
} else {
    spin = false
}

if beep {
    if spin {
        message = "Contact tech support"
    } else {
        message = "Check drive contacts"
    }
} else {
    if spin {
        message = "Check the speaker connections"
    } else {
        message = "Bring computer to repair center"
    }
}

print(message)

// 03.04.02

var message1: String

print("Enter the weight of the package (kg):", terminator: " ")
var weight = readLine()

print("Enter the length of the package (cm):", terminator: " ")
var length = readLine()

print("Enter the width of the package (cm):", terminator: " ")
var width = readLine()

print("Enter the height of the package (cm):", terminator: " ")
var height = readLine()

let volume = Double(length!)! * Double(width!)! * Double(height!)!

if Double(weight!)! <= 27 {
    if volume <= 100000 {
        message1 = "Package meets requirements"
    } else {
        message1 = "Too large"
    }
} else {
    if volume <= 100000 {
        message1 = "Too heavy"
    } else {
        message1 = "Too large and too heavy"
    }
}
print(message1)

// 03.04.03

import Foundation

var pricePerCopy: Double = 0.0
var primeUser: Bool
var totalPrice: Double = 0.0

print("Are you a prime user (yes/no): ", terminator: "")
let prime = readLine()
if prime! == "yes" {
    primeUser = true
} else {
    primeUser = false
}

print("Enter the number of copies to be printed:", terminator: " ")
let numCopies = readLine()

if 0 <= Int(numCopies!)! {
    if Int(numCopies!)! <= 499 {
        pricePerCopy = 0.30
    } else if Int(numCopies!)! <= 749 {
        pricePerCopy = 0.28
    } else if Int(numCopies!)! <= 999 {
        pricePerCopy = 0.27
    } else if Int(numCopies!)! <= 1000 {
        pricePerCopy = 0.25
    }
}

if primeUser {
    if Int(numCopies!)! >= 900 {
        totalPrice = 0.9 * Double(numCopies!)! * pricePerCopy
        print("As a Prime user, you receive 10% discount! Your total price for printing \(numCopies!) copies will be $\(String(format: "%.2f", totalPrice))")
    } else {
        totalPrice = Double(numCopies!)! * pricePerCopy
        print("Your total price for printing \(numCopies!) copies will be $\(String(format: "%.2f", totalPrice))")
    }
} else {
    totalPrice = Double(numCopies!)! * pricePerCopy
    print("Your total price for printing \(numCopies!) copies will be \(String(format: "%.2f", totalPrice))")
}