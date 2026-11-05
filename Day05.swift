import Foundation

let appName = "Focus Timer"
let devHours = 18
let reqHours = 12
let hasWorkingPrototype = true
let hasCriticalBugs = false
let usesSwiftUI = true
let hasOriginalFeature = true
let supportsOffline = false

print("App Name: \(appName)")
print("Development Hours: \(devHours)")
print("Minimum Required Hours: \(reqHours)\n")

//IF AND ELSE
if (hasCriticalBugs){
    print("Development Status: Blocked")
}
else {
    print("Development Status: Ready for Review")
}

if(hasWorkingPrototype && !hasCriticalBugs && usesSwiftUI && (hasOriginalFeature||supportsOffline)){
    print("Requirements Satisfied: true\n")
}


//ENUM AND SWITCH
enum AppCategory {
    case productivity
    case education
    case health
}

var selectedCategory = AppCategory.health

print("App Category: \(selectedCategory)")
switch selectedCategory {
case .productivity:
    print("Category Description: An app that helps the user be productive\n")
case .education:
    print("Category Description: An app that supports education\n")
case .health:
    print("Category Description: An app that helps the user stay healthy\n")
}


//TERNARY OPERATOR
let eligibleOrNot = (hasWorkingPrototype && !hasCriticalBugs && usesSwiftUI && (hasOriginalFeature||supportsOffline)) ? "Eligible" : "Not Eligible"
print("Eligibility: \(eligibleOrNot)")
