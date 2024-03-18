//
//  Sliders.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Sliders : View {
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var sliderValue = 50.0
    
    var body : some View {
        
        NavigationView {
            
            Section {
                
                Form {
                    
                    Section( " - the Slider view is used to create a user interface element that allows users to select a value within a specified range by dragging a slider thumb along a track. It's a common control for adjusting numeric values or settings with a continuous range." ){}
                    
                    Section( "Here's a basic example of how you can use the Slider view : ") {
                        
                        VStack {
                            
                            Slider(
                                value: $speed,
                                in: 0...100,
                                onEditingChanged: { editing in
                                    isEditing = editing
                                }
                            )
                            Text("\(speed)")
                                .foregroundColor(isEditing ? .red : .blue)
                                .padding()
                            
                            Text( " The following example shows a slider bound to the value speed. As the slider updates this value, a bound Text view shows the value updating. The onEditingChanged closure passed to the slider receives callbacks when the user drags the slider. The example uses this to change the color of the value text." )
                                .frame( alignment: .leading )
                                
                        } /// END OF VStack

                        
                        
                    }
                    
                    Section {
                        VStack {
                            Text("Slider Value: \(sliderValue, specifier: "%.2f")")
                            
                            Slider(value: $sliderValue, in: 0.0...100.0, step: 1.0)
                                .padding()
                            
                            Text( " In this example, the Slider view is created with a binding to a state variable ( $sliderValue ) to keep track of the selected value. The in parameter specifies the range of values the slider can take ( from 0.0 to 100.0 ). The step parameter defines the increment value as the slider is adjusted ( in this case, 1.0 ). The current value of the slider is displayed using a Text view." )
                            
                        } /// END OF VStack
                        
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/slider" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF ScrollView
            } /// END OF VStack
        } /// END OF NavigationView
        .navigationBarTitle( "Sliders" )
        .navigationBarTitleDisplayMode(.inline)
    }/// END OF BODY
}


struct Sliders_Previews : PreviewProvider {
    
    static var previews: some View {
        
        Sliders()
        
    }
}
