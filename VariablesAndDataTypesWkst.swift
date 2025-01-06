// 02.03.01

import Foundation

var salesTax: Double
var totalPrice: Double
var initialPrice: Double = 5

salesTax = initialPrice * 0.13
totalPrice = initialPrice + salesTax

print("The total price for a $\(String(format: "%.2f", initialPrice)) purchase is $\(String(format: "%.2f", totalPrice))")

initialPrice = 25
salesTax = initialPrice * 0.13
totalPrice = initialPrice + salesTax
print("The total price for a $\(String(format: "%.2f", initialPrice)) purchase is $\(String(format: "%.2f", totalPrice))")

// 02.03.03

var animalName = "dog"
var animalTrait = "loyal"

print("My favourite animal is the \(animalName) because they are \(animalTrait)")

animalName = "cat"
animalTrait = "cute"

print("My favourite animal is the \(animalName) because they are \(animalTrait)")
