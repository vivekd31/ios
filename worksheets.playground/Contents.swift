import UIKit

var str1 = "Hii"
var d1 = 10
var d2 = 12.25
print(str1, d1, d2, separator:",")

var programminglanguage = "swift"
print("My favourite programminglanguage is \(programminglanguage)")

var age=23
print("You are \(age) years old and in another \(age) years, You will be \(age * 2)")

print("""
Hello
World!
""")

print ("Hello All,\rWelcome to Swift programming")

let  welcomeMessage : String = "Hello!"
print(welcomeMessage , "All")

var number:Int = 5
for index in 1...5 {
    print("\(index) * \(number) = \(index*number)")
}

var totalNumbers = 100
var sum:Int = 0
for number in 1...totalNumbers {
    sum+=number
}
print("The sum of first \(totalNumbers) is \(sum)")

var coreLang = ["Java","Swift","Javascript","ASP.net","SQL"]
for index in 0..<coreLang.count {
    print("\(coreLang[index])")
}

var totalSum = 10
for val in 1...totalSum {
    if (val%2 == 0) {
        print("\(val)",terminator:",")
    }
}
print(" are all even numbers")

var member=true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
    }
}
