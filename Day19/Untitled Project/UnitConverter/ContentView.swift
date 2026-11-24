import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var inputValue = 10.0
    @State private var inputUnit = 0
    @State private var outputUnit = 2
    
    let units = [
        "Celsius",
        "Farenheit",
        "Kelvin",
    ]
    
    var convertedValue: Double {
            // Convert the input temperature to Celsius
            var celsius = inputValue

            switch inputUnit {
            case 1:
                celsius = (inputValue - 32) * 5 / 9
            case 2:
                celsius = inputValue - 273.15
            default:
                break
            }

            // Convert Celsius to the selected output unit
            switch outputUnit {
            case 1:
                return celsius * 9 / 5 + 32
            case 2:
                return celsius + 273.15
            default:
                return celsius
            }
        }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Value to convert") {
                    TextField(
                        "Enter a value",
                        value: $inputValue,
                        format: .number
                    )
                }
                Section("Input Unit"){
                    Picker("From", selection: $inputUnit){
                        ForEach(units.indices, id: \.self){index in
                            Text(units[index])
                                .tag(index)
                        }
                    }
                }
                    Section("Output Unit"){
                        Picker("To", selection: $outputUnit){
                            ForEach(units.indices, id: \.self){index in
                                Text(units[index])
                                    .tag(index)
                            }
                        }
                    }
                    Section("Converted Value"){
                        Text("\(convertedValue, specifier: "%.2f")")
                    }
                }
            }
            .navigationTitle("Unit Converter")
        }
    }
#Preview {
    ContentView()
}
