import Foundation

protocol Building {
    var rooms: Int{ get set}
    var cost: Int{ get set}
    var estateAgent: String{ get set}
    
    func printReport()
}

struct House: Building{
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    func printReport(){
        print("""
            Building Type: House
            Number of Rooms: \(rooms)
            Cost: \(cost)
            Name of the Agent: \(estateAgent)
            """)
    }
    
}

struct Office: Building{
    var rooms: Int
    var cost: Int
    var estateAgent: String
    
    func printReport(){
        print("""
            Building Type: Office
            Number of Rooms: \(rooms)
            Cost: \(cost)
            Name of the Agent: \(estateAgent)
            """)
    }
    
}
let house = House(rooms: 5, cost: 250000, estateAgent: "Thiago")
house.printReport()

let office = Office(rooms: 2, cost: 100000, estateAgent: "Joseph")
office.printReport()
