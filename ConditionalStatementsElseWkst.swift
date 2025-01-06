// 03.02.01

print("Enter any number between 1-99 (inclusive): ", terminator: "")
let num = readLine()
if (1...9).contains(Int(num!)!) {
    print("The number has one digit.")
} else {
    print("The number has two digits.")
}

// 03.02.02

import Foundation

var area: Double = 0.0
var volume: Double = 0.0
var height: Double = 0.0
var width: Double = 0.0

print("What would you like to calculate (A - area, V - volume): ", terminator: "")
let calculation = readLine()

if calculation! == "A" {
    print("Enter the length of the rectangle:", terminator: " ")
    let length = readLine()

    print("Enter the width of the rectangle: ", terminator: "")
    let width = readLine()

    area = Double(length!)! * Double(width!)!
    print("The area of the rectangle is \(String(format: "%.2f", area)) cm squared.")
} else {
    print("Enter the length of the rectangular prism:", terminator: " ")
    let length = readLine()

    print("Enter the width of the rectangular prism: ", terminator: "")
    let width = readLine()

    print("Enter the height of the rectangular prism: ", terminator: "")
    let height = readLine()

    volume = Double(length!)! * Double(width!)! * Double(height!)!
    print("The volume of the rectangular prism is \(String(format: "%.2f", volume)) cm cubed.")
}

// 03.02.03

import Foundation

var extraHours: Double = 0
var extraRate: Double = 0
var totalPay: Double = 0

print("Hours Worked:", terminator: " ")
let hoursWorked = readLine()
print("Hourly Pay:", terminator: " ")
let hourlyPay = readLine()

if Double(hoursWorked!)! <= 40.0 {
    totalPay = Double(hoursWorked!)! * Double(hourlyPay!)!
} else {
    extraHours = Double(hoursWorked!)! - 40.0
    print(extraHours)
    extraRate = Double(hourlyPay!)! * 1.5
    print(extraRate)
    totalPay = (40.0 * Double(hourlyPay!)!) + (extraHours * extraRate)
}

print("Your total pay is $\(String(format: "%.2f", totalPay)) for working for \(hoursWorked!) hours at an hourly rate of $\(String(format: "%.2f", Double(hourlyPay!)!))/hr.")