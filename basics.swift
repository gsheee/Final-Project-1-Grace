print("Enter your favourite number: ")
var input: String? = readLine()

print("Your fav programming language is \(input!)")

print(type(of: input))

let favNum = Int(input!)

print(type(of: favNum))