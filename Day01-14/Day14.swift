import Foundation

func randomNum(numbers: [Int]?)->Int{
    return numbers?.randomElement() ?? Int.random(in: 1...100)
}


