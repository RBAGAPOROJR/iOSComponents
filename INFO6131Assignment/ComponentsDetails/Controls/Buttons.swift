//
//  Buttons.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-11.
//

import SwiftUI
import SafariServices

struct Buttons : View {
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form{
                    
                    Section(" -  In SwiftUI, the Button view is used to create interactive buttons in your user interface. Buttons can trigger actions when tapped, providing a way for users to interact with your app. Here's a basic example of how you can use the Button view in SwiftUI : "){}
                    
                    Section{
                        
                        VStack {
                            
                            Button("Tap me!") {
                                print("Button tapped!")
                            }
                            .padding()
                            
                            Button {
                                print("Custom button tapped!")
                            } label: {
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("Custom Button")
                                }
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                            }
                            .padding()
                        }
                    } header : {
                        Text( "SwiftUI Button Example" )
                            .fontWeight( .bold )
                            .frame( maxWidth: 400, alignment: .leading )
                    } .padding()
                        .frame( maxWidth: 400, alignment: .center )
                    
                    Section {
                        
                        Text("• The first Button has a simple text label ( \"Tap me!\" ) and triggers a closure when tapped. In this case, it prints a message to the console. ").padding( .top, 10)
                        
                        Text("• The second Button has a custom label, which is a HStack containing an image (a filled star) and a Text view. This button also triggers a closure when tapped, printing a different message to the console. ").padding( .top, 3 )
                        
                        Text("You can customize the appearance of buttons by modifying their labels, applying styling, and adjusting various properties such as padding, background color, and corner radius. Additionally, you can associate actions with buttons to perform specific tasks when the button is tapped. ").padding( .top, 3 )
                        
                    } header: {
                        Text("In this example: ")
                            .fontWeight( .bold )
                            .frame( maxWidth: 400, alignment: .leading )
                    } .frame( maxWidth: 400, alignment: .leading )
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/button" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                    
                }
            } /// END OF VStack
        } /// END OF NavigationView
        .navigationBarTitle( "Button" )
        .navigationBarTitleDisplayMode(.inline)
    } /// END OF BODY * * *
}


struct Buttons_Previews : PreviewProvider {
    
    static var previews : some View {
        
        Buttons()
        
    }
}
