import Foundation

let fruits = ["Apple", "Banana", "Peach", "Banana", "Apple"]
print("The fruits in the Array(allows duplicates) are: \(fruits.count)")
let fruitsSet = Set(fruits)
print("The fruits in the set(no duplicates) are: \(fruitsSet.count)")
