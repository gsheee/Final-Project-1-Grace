// 05.01.01

// print("Enter an integer: ", terminator: "")
// let number = readLine()
// var num = Int(number!)!

// for _ in 1...3 {
//     num -= 20
// }

// print("The final number is \(num).")

// 05.01.02

var product: Double = 1
var num: String?

for _ in 1...4 {
    print("Enter a number: ", terminator: "")
    num = readLine()
    product *= Double(num!)!
}

print("The produce of the four numbers is \(product).")

// 05.01.03

for i in stride(from: 1, to: 20, by: 2) {
    print(i)
}