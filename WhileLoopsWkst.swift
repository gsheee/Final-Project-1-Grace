// 05.02.01

print("Enter a number: ", terminator: "")
let firstNum = readLine()
var firstNumber = Int(firstNum!)!

print("Enter a different number that's smaller: ", terminator: "")
let secondNum = readLine()
let secondNumber = Int(secondNum!)!

while firstNumber >= secondNumber {
    print(firstNumber)
    firstNumber -= 1
}

// 05.02.02

import Foundation

var counter: Double = 0
var sum: Double = 0
var average: Double = 0

print("Enter a number: ", terminator: "")
var number = readLine()
var numb = Double(number!)!

while numb != 0 {
    counter += 1
    sum += numb
    print("Enter another number (enter 0 to stop): ", terminator: "")
    number = readLine()
    numb = Double(number!)!
}

average = sum / counter

print("The average is \(String(format: "%.2f", average)).")

// 05.02.03

let num = Int.random(in: 1...50)
var chances: Int = 0
var guessNum = 1

print(num)

print("""
Your goal is to successfully guess the random number that is generated between 1 and 50, inclusive.
Easy level – 9 tries
Hard level – 5 tries
""")

print("Enter your desired level of difficulty (Easy/Hard): ", terminator: "")
let level = readLine()

if level! == "Easy" {
    chances = 9
} else if level! == "Hard" {
    chances = 5
}

print("Guess #\(guessNum): Enter your guess: ", terminator: "")
var guess = readLine()

while guessNum <= chances {

    if (guessNum == chances) {
    print("Game Over.")
    break
    }

    guessNum += 1

    if Int(guess!)! > num {
        print("Too high")
    } else if Int(guess!)! < num {
        print("Too low")
    } else if Int(guess!)! == num {
        print("You've guesse correctly! Congraulations!")
        break
    }

    print("Guess #\(guessNum): Enter your guess: ", terminator: "")
    guess = readLine()
}