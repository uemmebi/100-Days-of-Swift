import Foundation

let appName = "Focus Timer"
let expectedDevHours = 20
let completedDevHours = 14
let hasCriticalBugs = false

func printHeader() {
    print("===== APP DEVELOPMENT TRACKER =====")
}

func calculateRemainingHours(completedDevHours: Int, expectedDevHours: Int) -> Int {
    let remainingHours = expectedDevHours - completedDevHours
    return remainingHours
}

// Saving the value in a constant in order to use it after
let remainingHours = calculateRemainingHours(completedDevHours: completedDevHours, expectedDevHours: expectedDevHours)

func evaluateProject(completedDevHours: Int, expectedDevHours: Int, hasCriticalBugs: Bool) -> (progress: Int, ready: Bool) {
    let progress = completedDevHours * 100 / expectedDevHours
    let ready = completedDevHours >= expectedDevHours && !hasCriticalBugs
    return (progress, ready)
}

// Saving the values in constants in order to use them after
let (progress, ready) = evaluateProject(completedDevHours: completedDevHours, expectedDevHours: expectedDevHours, hasCriticalBugs: hasCriticalBugs)

func printReport(appName: String, remainingHours: Int, progress: Int, ready: Bool) {
    print("""
            Name of the App: \(appName)
            Remaining Development Hours: \(remainingHours)
            Progress: \(progress)%
            Ready: \(ready)
            """)
}

printHeader()

printReport(appName: appName, remainingHours: remainingHours, progress: progress, ready: ready)
