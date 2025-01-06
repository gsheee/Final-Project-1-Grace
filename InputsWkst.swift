print("Enter the first number: ", terminator: "")
let firstInt = readLine() // gets user input for 1st num
let number1 = Int(firstInt!) // converts 1st input from String to Int

print("Enter the second number: ", terminator: "")
let secondInt = readLine() // gets user input for 2nd num
let number2 = Int(secondInt!) // converts 2nd input from String to Int

let sum = number1! + number2! // addition of the integers
let difference = number2! - number1! // subtraction of the integers
        
// print the results
print("The sum of \(firstInt!) and \(secondInt!) is \(sum).")
print("The first integer \(firstInt!) subtracted from the second integer \(secondInt!) gives \(difference).")


// 02.04.02

import Foundation

print("Enter your first score:", terminator: " ")
let firstScore = readLine() // gets user input for 1st score
let score1 = Double(firstScore!) // converts 1st score from optional String to optional Double

print("Enter your second score:", terminator: " ")
let secondScore = readLine() // gets user input for 2nd score
let score2 = Double(secondScore!) // converts 2nd score from optional String to optional Double

print("Enter your third score:", terminator: " ")
let thirdScore = readLine() // gets user input for 3rd score
let score3 = Double(thirdScore!) // converts 3rd score from optional String to optional Double

print("Enter your name:", terminator: " ")
let name = readLine() // gets user input for name

let averageScore = (score1! + score2! + score3!) / 3 // calculates the average of three scores (forcefully unwraps optional Double)
print("\(name!) scored an average of \(String(format: "%.2f", averageScore)) goals per game.") // prints result

// 02.04.03

// name and description of program
print("""
Number Systems
Convert to Base 10
This program will accep a number in a non-base 10 representation, \
and convert ot its base 10 equivalent.
""")

// gets user input for a non-base 10 base
print("Enter a base that is not base 10:", terminator: " ")
let base = readLine()
let nonBase10Base = Int(base!)

print("Enter a number in base \(nonBase10Base!):", terminator: " ")
let num = readLine()
let nonBase10Num = Int(num!)

let base10Num = Int(num!, radix: nonBase10Base!)
print("\(num!) in base \(base!) is \(base10Num!) in base 10.")