import Foundation

struct AppProject{
    var name: String
    var totalTasks: Int
    
    var completedTasks: Int{
        willSet{
            print("\nThe completed tasks will be: \(newValue)")
        }
        didSet{
            print("The completed tasks are: \(completedTasks)")
        }
    }
    
    init(name: String, totalTasks: Int) {
        self.name = name
        self.totalTasks = totalTasks
        self.completedTasks = 0
    }
    
    var isCompleted: Bool {
        completedTasks >= totalTasks
    }
    
    var progress: Int {
        completedTasks * 100 / totalTasks
    }
    
    mutating func completeTask(){
        if completedTasks+1 <= totalTasks {
            completedTasks+=1
        }
    }
    func printReport(){
        print("""
                \nApp Name: \(name)
                Completed Tasks: \(completedTasks)
                Progress: \(progress)%
                Completion Status: \(isCompleted ? "Completed" : "In Progress")
                """)
    }
}

var app = AppProject(name: "Focus Timer", totalTasks: 5)
app.completeTask()
app.completeTask()
app.completeTask()
app.printReport()
app.completeTask()
app.completeTask()
app.printReport()
