import Foundation

var appIdeas = ["Habit Tracker", "Study Planner", "Budget Buddy"]
appIdeas.append("Recipe Pocket")
appIdeas[1] = "Focus Timer"
print("Total App Ideas: \(appIdeas.count)")
print("""
First element of the Array: \(appIdeas[0])
Last element of the Array: \(appIdeas[appIdeas.count-1])\n
""")

var hoursPerApp = [String : Int]()
hoursPerApp["Habit Tracker"] = 8
hoursPerApp["Focus Timer"] = 6
hoursPerApp["Budget Buddy"] = 12
hoursPerApp["Recipe Pocket"] = 5
print("Focus Timer \(hoursPerApp["Focus Timer", default: 0])")
hoursPerApp["Budget Buddy"] = 10
print("Budget Buddy \(hoursPerApp["Budget Buddy", default: 0])")
print("Weather App \(hoursPerApp["Weather App", default: 0])\n")

var Technologies = Set(["Swift", "SwiftUI", "XCode", "Git"])
Technologies.insert("Playgrounds")
print("Updated Technologies: \(Technologies.count)")
print("SwiftUI Available: \(Technologies.contains("SwiftUI"))")
print("Updated Technologies: \(Technologies.count)\n")

enum ProjectStatus{
    case idea, inProgress, Completed
}
var currentStatus = ProjectStatus.idea
currentStatus = ProjectStatus.inProgress
print("Project Status : \(currentStatus)\n")

var isProjectReady = false
isProjectReady.toggle()
print("Project Ready : \(isProjectReady)\n")
