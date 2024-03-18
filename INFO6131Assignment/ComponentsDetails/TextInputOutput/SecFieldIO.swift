//
//  SecFieldIO.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-11.
//

import SwiftUI
import SafariServices

struct SecFieldIO : View {
    
    @State private var password: String = ""
    
    var body : some View {

        NavigationView {
            
            Section{
                Form{
                    Section(" -  is a view used to collect sensitive text input from the user, such as passwords. It behaves similarly to a TextField but obscures the entered text for security reasons. When users type into a SecureField, the characters are typically displayed as dots or asterisks, ensuring that the entered information remains private. "){}
                    
                    Section( "Simple example of using a Secure Field : " ) {
                        
                        VStack {
                            
                           SecureField( "Enter your password", text: $password )
                               .textFieldStyle( RoundedBorderTextFieldStyle() )

                           Text( "You entered: \( password )" )
                               .padding()
                            
                            Text(
                                """
                                CODE :
                                
                                @State private var password: String = ""

                                SecureField( "Enter your password", text: $password )
                                
                                Text("Your name : "password" )
                                """
                            ).font( .system( size: 12, design: .monospaced ) )
                                .foregroundStyle( Color.gray )
                                .frame( maxWidth: .infinity, alignment: .leading )
                            
                       }
                        .padding()
                        
                    }

                    Section ( "In this example: " ) {
                        
                        Text("• SecureField(\"Enter your password\", text: $password) creates a secure text field with a placeholder and binds it to the password state variable.").padding( .top, 10)

                        Text("• .textFieldStyle(RoundedBorderTextFieldStyle()) applies a rounded border style to the secure text field.").padding( .top, 3 )

                        Text("• The entered text is displayed below the secure text field using a Text view.").padding( .top, 3 )
                            
                        Text("Just like with TextField, you can customize the appearance and behavior of the SecureField further by adjusting its properties and modifiers. The entered text remains secure and is not visible to the user.").padding( .top, 10)
                        
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/securefield" )! )
                            
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                }
            }
            }/// END OF NAVIGATION VIEW
        .navigationTitle( "Secure Field" )
        .navigationBarTitleDisplayMode( .inline )
    } /// END OF BODY * * *
}



struct SecFieldIO_Previews : PreviewProvider {
    
    static var previews : some View {
        
        SecFieldIO()
        
    }
}
