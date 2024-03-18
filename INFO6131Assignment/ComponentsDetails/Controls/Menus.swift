//
//  Menu.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-11.
//

import SwiftUI
import SafariServices

struct Menus : View {
    
    @State private var btnText: String = ""
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form{
                    
                    Section( " -  In SwiftUI, the Menu view is used to create menus that can contain a list of actions or other views. Menus are often used to provide a set of options or actions that users can choose from. The Menu view is versatile and can be used in different contexts, such as in a toolbar, in response to a button tap, or as part of a navigation interface." ){}
                    
                    Section( "Here's a basic example of how you can use the Menu view in SwiftUI : " ){
                        
                        VStack {
                            
                            Menu( "Menu" ) {
                                
                                Button( action : { btnText = "Add" } ) {
                                    Text( "Add" )
                                }
                                Button( action : { btnText = "Edit" } ) {
                                    Text( "Edit" )
                                }
                                Button( action : { btnText = "Delete" } ) {
                                    Text( "Delete" )
                                        .foregroundStyle( Color.red )
                                }
                                
                                
                                
                            } /// END OF MENU
                        } /// END OF VSTACK
                        .frame( maxWidth: 400, alignment: .center )
                        HStack{
                            
                            Text( "You clicked the button from Menu : " )
                            Text( " \( btnText )" )
                                .fontWeight(.bold)
                                .padding()
                            
                        } /// END OF HSTACK
                        
                        Text("""
                        CODE :
                        
                        Menu( "Menu" ) {
                            
                        Button( action: { btnText = "Add" } ) {
                            Text( "Add" )
                        }
                        Button( action: { btnText = "Edit" } ) {
                            Text( "Edit" )
                        }
                        Button( action: { btnText = "Delete" } ) {
                            Text( "Delete" )
                        
                        }
                        """)
                        .font( .system( size: 12, design: .monospaced ) )
                        .foregroundStyle( Color.gray )
                        .padding()
                        .frame( maxWidth: .infinity, alignment: .leading )
                    }
                    .frame( maxWidth: 400, alignment: .leading )
                    
                    
                    Section( "In this example: " ) {
                        
                        Text("• The Menu is associated with a button, and when the button is tapped, it presents a menu with the actions ( \"Delete\", \"Add\" and \"Edit\" ). ").padding( .top, 10)
                        
                        Text("• Menus can be customized further with styling, and you can also use them in conjunction with other SwiftUI views and controls to create complex user interfaces. The appearance and behavior of menus can adapt based on the device and platform your app is running on. ").padding( .top, 3 )
                        
                    } .frame( maxWidth: 400, alignment: .leading )
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/menu" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                    
                } /// END OF ScrollView
            } /// END OF VStack
        } /// END OF NavigationView
        .navigationBarTitle( "Menu" )
        .navigationBarTitleDisplayMode(.inline)
    } /// END OF BODY * * *
}

struct Menus_Previews : PreviewProvider {
    
    static var previews: some View {
        
        Menus()
        
    }
}

