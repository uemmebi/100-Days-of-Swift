import Foundation

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let evenNumbers = luckyNumbers.filter{ a in
    return a.isMultiple(of: 2)
}

let ascendingOrder = luckyNumbers.sorted{ a,b in
    return a<b
}

let mappedIntoStrings = luckyNumbers.map{ a in
    return"\(a) is a lucky number"
}

print(evenNumbers)
print(ascendingOrder)
print(mappedIntoStrings)
