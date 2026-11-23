import SwiftUI

struct ContentView: View {
    @State private var check = 0.0
    @State private var people = 2
    @State private var tip = 10
    @FocusState private var amountIsFocused: Bool
    
    var total: Double {
        check + (check * Double(tip) / 100)
    }

    var amountPerPerson: Double {
        total / Double(people)
    }
    
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Amount of the check") {
                    TextField("Amount", value: $check, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                Section("Number of people") {
                    Picker("People", selection: $people) {
                        ForEach(2...20, id: \.self) { people in
                            Text("\(people) people")
                                .tag(people)
                        }
                    }
                }
                
                Section("Tip percentage") {
                    Picker("Tip", selection: $tip) {
                        ForEach(0...100, id: \.self) { percentage in
                            Text("\(percentage)%")
                                .tag(percentage)
                        }
                    }
                }
                
                Section("Total with tip") {
                    Text("Total with tip: \(total, specifier: "%.2f") €")
                }
                
                Section("Amount per Person") {
                    Text("Amount per Person: \(amountPerPerson, specifier: "%.2f") €")
                }
            }
            .navigationTitle("WeSplit")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()

                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }
