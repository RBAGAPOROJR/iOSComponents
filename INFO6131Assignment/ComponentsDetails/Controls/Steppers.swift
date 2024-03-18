//
//  Steppers.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Steppers : View {
    
    @State private var stepperValue = 0
    @State private var age = 18
    
    var body : some View {
        
        NavigationView {
            Section{
                Form {
                    
                    Section( " - Stepper view is used to create a user interface element that allows users to increment or decrement a numeric value by tapping on buttons. It's commonly used for settings where users need to adjust a value within a specified range in discrete steps. A control that performs increment and decrement actions." ){}
                    
                    Section( "Here's a basic example of how you can use the Stepper view :" ) {
                        
                        VStack {
                            
                            Stepper("Adjust Value", value: $stepperValue, in: 0...10)
                            Text("Stepper Value: \(stepperValue)")
                            
                        } /// END OF VStack
                        Text( " - In this example, the Stepper view is created with a binding to a state variable ( $stepperValue ) to keep track of the selected value. The in parameter specifies the range of values the stepper can take (from 0 to 10 in this case). The label for the stepper is provided using the \"Adjust Value\" string. As the user taps on the increment or decrement buttons of the stepper, the value is adjusted within the specified range, and the displayed text reflects the current value. " )
                    }.padding()
                    
                    Section{
                        
                        VStack {
                            Stepper("Enter your age", value: $age, in: 0...130)
                            Text("Your age is \(age)")
                        }
                        
                        Text(" - In this example, this creates a stepper bound to an age property, letting users select values in the range 0 through 130 inclusive.")
                        
                    }  .padding()
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/stepper" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            }
    } /// END OF NavigationView
        .navigationBarTitle( "Stepper" )
        .navigationBarTitleDisplayMode(.inline)
} /// END OF BODY
}


struct Steppers_Previews : PreviewProvider {
    
    static var previews: some View {
        
        Steppers()
        
    }
}
