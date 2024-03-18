//
//  TextFieldIO.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-11.
//

import SwiftUI
import SafariServices

struct TextFieldIO : View {
    
    @State private var username: String = ""
    
    var body: some View {
        
        NavigationView {
            
            Section{
                Form{
                    Section(" - is a view used to collect text input from the user. It's an interactive element that allows users to enter and edit text. The TextField view provides a range of customization options, including placeholder text, keyboard type, secure entry for passwords, and more. "){}
                    
                    Section ( "Simple example of using a Text Field : " ) {
                        
                        VStack {
                            
                            TextField( "Enter your name", text: $username )
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                            Text( "Your name : \( username )" )
                                .padding()
                            
                            Text(
                                """
                                CODE :
                                
                                @State private var username: String = ""
                                
                                TextField(\"Enter your username\", text: $username)
                                
                                Text("Your name : "username" )
                                """
                            ).font( .system( size: 12, design: .monospaced ) )
                                .foregroundStyle( Color.gray )
                                .frame( maxWidth: .infinity, alignment: .leading )
                        }
                        .padding()
                        
                    }
                    
                    Section ("In this example: ") {
                        
                        
                        Text("• creates a text field with a placeholder and binds it to the username state variable.").padding( .top, 10 )
                        
                        
                        Text("• .textFieldStyle(RoundedBorderTextFieldStyle()) applies a rounded border style to the text field.").padding( .top, 3 )
                        
                        Text("• The entered text is displayed below the text field using a Text view.").padding( .top, 3 )
                        
                        Text("You can customize the appearance and behavior of the TextField further by adjusting its properties and modifiers. Additionally, you can use the onEditingChanged and onCommit closures to respond to changes in the text field's editing state and handle the user pressing the return key, respectively.").padding( .top, 10)
                        
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/textfield" )! )
                            
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                }
            }
        }/// END OF NAVIGATION VIEW
        .navigationTitle( "Text Field" )
        .navigationBarTitleDisplayMode( .inline )
    } /// END OF BODY * * *
}



struct TextFieldIO_Previews : PreviewProvider {
    
    static var previews : some View {
        
        TextFieldIO()
        
    }
}
