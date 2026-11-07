import Foundation

enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func squareRoot(number: Int) throws -> Int{
    if (number < 1 || number > 10000){
        throw SquareRootError.outOfBounds
    }
    for i in 1...100{
        if (i*i == number){
            return i
        }
        else if (i*i>number){
            break
        }
    }
    throw SquareRootError.noRoot
}

var n=5
print("Number: \(n)")
do {
    let result = try squareRoot(number: n)
    print("Square root: \(result)\n")
} catch {
    print("Error: The integer Square Root does not exist\n")
}

n=81
print("Number: \(n)")
do {
    let result = try squareRoot(number: n)
    print("Square root: \(result)\n")
} catch {
    print("Error: The integer Square Root does not exist\n")
}
