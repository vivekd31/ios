import UIKit

var greeting = "Hello, playground"
import UIKit
var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
         print("The first item in clothes is socks")
}else{
            print("socks is not the first item in clothes")
}

print(foodItems.split(separator: ","))

if clothes.contains(",") {
          print("Clothes contains more than one item")
          }else{
            print("Clothes contain only one item")
      }


foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]

shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]
  
clothes.remove(at: clothes.firstIndex(of: "T")!)

clothes.remove(at: clothes.firstIndex(of: "-")!)


print("\(shoppingList), \(clothes)")

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])

