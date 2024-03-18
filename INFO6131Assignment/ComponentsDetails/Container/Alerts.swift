//
//  Alerts.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Alerts : View {
    
    @State private var showAlert = false
    @State private var showAlert1 = false
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "In SwiftUI, the Alert view is used to present a modal dialog with a message and optional buttons to the user. It's a common way to show important information, confirmation messages, or prompt users for input." ){}
                    
                    Section( "Here's a basic example of how to use the Alert view :" ) {
                        
                        Button("Show Alert") {
                            
                            showAlert = true
                            
                        }
                        .alert( isPresented: $showAlert ) {
                            Alert(
                                title: Text( "Important Message" ),
                                message: Text( "This is a sample alert message." ),
                                primaryButton: .default( Text( "OK" ) ) {
                                    
                                    print("OK button tapped")
                                    
                                },
                                secondaryButton: .cancel()
                            )
                        }.frame( maxWidth: .infinity, alignment: .center)
                            .padding()
                    }
                    
                    Section( "In this example, we use a Button with the label \"Show Alert.\" When the button is tapped, the showAlert state is set to true. The alert modifier is then applied to the view, and it takes a binding to a boolean variable (isPresented parameter) that controls whether the alert is visible. The Alert is created with a title, a message, and buttons. The primaryButton is the main action button, and the secondaryButton is typically used for cancel or secondary actions." ){}.padding( .bottom, -30 )
                    
                    Section("When the button is tapped, the Alert is presented to the user. The user can then interact with the buttons in the alert, triggering actions specified in the button closures. You can customize the appearance and behavior of the Alert by adjusting various parameters, such as title, message, buttons, and more." ){}.padding( .bottom, -30 )
                    
                    Section( "You show an alert by using the alert(isPresented:content:) view modifier to create an alert, which then appears whenever the bound isPresented value is true. The content closure you provide to this modifer produces a customized instance of the Alert type. In the following example, a button presents a simple alert when tapped, by updating a local showAlert property that binds to the alert." ){}
                    
                    
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/alert" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Alert")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
}


struct Alerts_Previews : PreviewProvider {
    
    static var previews: some View {
                
            Alerts()
    
    }
}
