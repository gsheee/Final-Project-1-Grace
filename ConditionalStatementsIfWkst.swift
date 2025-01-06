// 03.01.01

let showing = true

if showing == true {
    print("Frozen II is currently in theatres! Buy a ticket before it runs out!")
}
if showing == false {
    print("Unfortunately, Frozen II is not showing today. Goodbye and have a good rest of your day!")
}

// 03.01.02 a)

// import Foundation

// var change: Int = 0
// var numToonies: Int = 0
// var numLoonies: Int = 0
// var numQuarters: Int = 0
// var numDimes: Int = 0
// var numNickels: Int = 0
// var numPennies: Int = 0

// print("Enter the cost of the purchased item (less than $5): ", terminator: "")
// let purchasedAmt = readLine()
// change = 500 - Int(Double(purchasedAmt!)! * 100)

// if change >= 200 {
//     numToonies = Int(change / 200)
//     change %= 200
// }
// if change >= 100 {
//     numLoonies = Int(change / 100)
//     change %= 100
// }
// if change >= 25 {
//     numQuarters = Int(change / 25)
//     change %= 25
// }
// if change >= 10 {
//     numDimes = Int(change / 10)
//     change %= 10
// }
// if change >= 5 {
//     numNickels = Int(change / 5)
//     change %= 5
// }
// if change > 0 {
//     numPennies = change
// }
// print("""
// Give the customer:
// \(numToonies) toonies
// \(numLoonies) loonies
// \(numQuarters) quarters
// \(numDimes) dimes
// \(numNickels) nickels
// \(numPennies) pennies
// """)

// 03.01.02 b)

// import Foundation

// var change: Int = 0
// var numToonies: Int = 0
// var numLoonies: Int = 0
// var numQuarters: Int = 0
// var numDimes: Int = 0
// var numNickels: Int = 0
// var numPennies: Int = 0

// print("Enter the cost of the purchased item (less than $5): ", terminator: "")
// let purchasedAmt = readLine()
// change = 500 - Int(Double(purchasedAmt!)! * 100)

// if change >= 10 {
//     numDimes = Int(change / 10)
//     change %= 10
// }
// if change >= 5 {
//     numNickels = Int(change / 5)
//     change %= 5
// }
// if change > 0 {
//     numPennies = change
// }

// print("""
// Give the customer:
// \(numToonies) toonies
// \(numLoonies) loonies
// \(numQuarters) quarters
// \(numDimes) dimes
// \(numNickels) nickels
// \(numPennies) pennies
// """)

// 03.01.03

var message: String = ""

print("Enter any real number:", terminator: " ")
let num = readLine()

print("Checking if \(num!) is greater than 10...")
if Int(num!)! > 10 {
    message = "Success"
}

print(message)
print("Done checking.")