// 03.06.01

var message: String = ""
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

if beep && spin {
    message = "Contact tech support"
} else if beep && !(spin) {
    message = "Check drive contacts"
} else if !beep && spin {
    message = "Check the speaker connections"
} else if !beep && !spin {
    message = "Bring computer to repair center"
}

print(message)

// 03.06.04

print("Enter any number from 1-100 (inclusive): ", terminator: "")
let num = readLine()
let number = Int(num!)!

if (number % 10 == 0) {
    print("Criteria A")
} else if (number % 5 == 0) || (number < 40) {
    print("Criteria B")
} else if (number < 60) {
    print("Criteria C")
} else {
    print("Does not match any Criteria")
}