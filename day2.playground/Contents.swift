import UIKit

var a = 10;
var b = 20;
var sum = 0;
sum = a+b
print(sum)
//String Interpolation
print("The sum is equal to: \(sum)")
//Terminator
print("The sum is ", terminator:"=")
print(sum)
//separator
print(1,2,3)
print(1,2,3, separator: "*")

var fname = "Vivek"
var lname = "Drakshapally"
print(fname,lname, separator: "")
print(fname,lname)

var str1 = "Vivek"
var str2 = "Drakshapally"
var str3 = "-"
print(str1, "-", str2)
print(str1, str3, str2)


//constants (let) and variables (var)

var p = 9.0
var q = 2.0
p = p-q
print(p)



var radius = 2.0
var pi = 3.14
var perimeter = 2 * pi * radius
print("The perimeter of circle is \(perimeter)")

//Tuples
var httpError = (errorcode:404, errmessage:"Page not found")
print(httpError)
print(httpError.errorcode, terminator:":")
print(httpError.errmessage)

var name = ("vivek","Drakshapally")
var FName = name.0
var LName = name.1
print(FName , LName)
