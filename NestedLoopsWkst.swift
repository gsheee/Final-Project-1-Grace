// 05.03.01

for i in 1...5 {
    print("Grace \(i)")
    for j in 1...3 {
        print("She \(j)")
    }
}

// 05.03.02

var line = ""

print("Enter the horizontal measure: ", terminator: "")
let horizontal = readLine()
let width = Int(horizontal!)!

print("Enter the vertical measure: ", terminator: "")
let vertical = readLine()
let height = Int(vertical!)!

for _ in 1...height {
    line = ""
    for _ in 1...width {
        line += "*"
    }
    print(line)
}

// 05.03.03

var sum = 0
var numWays3 = 0
var numWays4 = 0
var numWays12 = 0

for firstDie in 1...6 {
    for secondDie in 1...6 {
        sum = firstDie + secondDie
        if sum == 3 {
            numWays3 += 1
            print("\(firstDie) + \(secondDie) = \(sum)")
        } else if sum == 4 {
            numWays4 += 1
            print("\(firstDie) + \(secondDie) = \(sum)")
        } else if sum == 12 {
            numWays12 += 1
            print("\(firstDie) + \(secondDie) = \(sum)")
        }
    }
}

print("""
There are \(numWays3) ways(s) to add up to 3
There are \(numWays4) way(s) to add up to 4
There are \(numWays12) way(s) to add up to 12
""")