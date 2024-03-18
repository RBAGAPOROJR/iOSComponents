//
//  Pickers.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Pickers : View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    @State private var selectedOption = 0
    let options = ["Option 1", "Option 2", "Option 3"]
    
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    
    @State private var selectedDate = Date()
    
    
    var body: some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "the Picker view is used to create a dropdown-style user interface that allows users to make a selection from a set of options. It's a versatile control that is commonly used to present a list of options for the user to choose from." ){}
                    
                    Section( "Here's a basic example of how you can use the Picker view :" ) {
                        
                        Picker( "Number of people", selection: $numberOfPeople ) {
                            
                            ForEach( 1..<11 ) {
                                
                                Text( "\($0) people" )
                                
                            }
                        }
                    }
                    
                    Section{
                        
                        VStack {
                            
                            Picker("Select an Option", selection: $selectedOption) {
                                
                                ForEach( 0..<3 ) { index in
                                    
                                    Text(options[index]).tag(index)
                                    
                                }
                            }
                            .pickerStyle( MenuPickerStyle() )
                            Text("Selected Option : \(options[selectedOption])")
                                .padding()
                        }
                    }
                    
                    Section {
                        
                        VStack {
                            
                            Picker( "Please choose a color", selection : $selectedColor ) {
                                
                                ForEach( colors, id: \.self ) {
                                    
                                    Text($0)
                                    
                                }
                            }
                            Text( "You selected : \(selectedColor)" )
                        }
                    }
                    
                    Section("If you want to create a Picker for selecting dates in a specific format, you can use the DatePicker view in SwiftUI. Here's an example of a date picker with a specific format:") {
                        
                        VStack {
                            
                            DatePicker( "Select a Date", selection: $selectedDate, displayedComponents: [ .date ] )
                                .datePickerStyle( WheelDatePickerStyle() )
                                .labelsHidden()
                                .padding()
                            HStack{
                                Text( "Selected Date : " )
                                Text( "\( formattedDate( selectedDate ) )" )
                                    .fontWeight(.bold)
                            }
                        }
                        .padding()
                    }
                    Section( "In this example, the DatePicker view is created with a label ( \"Select a Date\" ), a binding to a Date state variable ($selectedDate), and a specified date format. The WheelDatePickerStyle() is applied to give the date picker a wheel-style appearance. The labels are hidden to make the UI cleaner. The selected date is displayed using a Text view, and the formattedDate function is used to format the date based on the desired format. You can customize the date format by adjusting the dateFormat property in the formattedDate function. Feel free to modify the code based on your specific needs." ){}
                    
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/picker" )! )
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Picker")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy" // Customize the date format as needed
        return formatter.string(from: date)
    }
    
}


struct Pickers_Previews : PreviewProvider {
    
    static var previews: some View {
        
            Pickers()
            
    }
}
