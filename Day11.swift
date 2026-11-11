import Foundation

struct Workshop{
    var name: String
    var participants = 0
    private let maxParticipants = 5
    static var totalRegistrations = 0
    
    mutating func registerParticipant(name: String){
        if (participants<maxParticipants){
            participants += 1
            Workshop.totalRegistrations += 1
            print("\(name) registered for \(self.name)")
        }
        else{
            print("Workshop Full")
        }
    }
    static func printReport(){
        print("Total Registrations: \(totalRegistrations)")
    }
}

var swiftFundamentals = Workshop(name: "Swift Fundamentals")
swiftFundamentals.registerParticipant(name: "Umberto")
swiftFundamentals.registerParticipant(name: "Stefano")
swiftFundamentals.registerParticipant(name: "Giuseppe")

var uiDesign = Workshop(name: "UI Design")
uiDesign.registerParticipant(name: "Alessandro")
uiDesign.registerParticipant(name: "Carmine")

print("\nSwift Fundamentals: \(swiftFundamentals.participants)")
print("\nUI Design: \(uiDesign.participants)")
Workshop.printReport()

