//
//  Navigations.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Navigations : View {
    
    @State private var isDetailViewActive = false
   
    var body : some View {
        
        NavigationView {
           
            Section{
                
                Form {
                    
                    Section( "In SwiftUI, navigation is often managed using the NavigationView and NavigationLink views. These views help you create hierarchical navigation structures in your app." ){}.padding( .bottom,-30 )
                    
                    Section( "Here's a basic example of how you can use NavigationView and NavigationLink:" ){}
                
                    Section(){
                        List {
                           NavigationLink("First Screen", destination: Text("Hello from the first screen!"))
                           NavigationLink("Second Screen", destination: Text("Hello from the second screen!"))
                       }
                    }
                    
                    Section( "In this example, NavigationView is used as the root view, wrapping the content. List contains two NavigationLink views, each representing a screen in your app. The destination for each NavigationLink is specified by providing a view ( in this case, a Text view )." ){}.padding( .bottom,-30 )
                    
                    Section( "When you run this code, you'll see a list with two options. Tapping on each option will navigate to the respective screen." ){}
                    
                    Section( "You can also use NavigationLink to programmatically navigate between views. Here's an example :" ){}
                    
                    Section("Navigation Example" ){
                        
                        VStack {
                        
                            NavigationLink("Navigate Programmatically", destination: Text("Hello from the programmatically navigated screen!"))
                                .isDetailLink(false) // Use this to remove the default behavior that pushes onto the navigation stack
                                .padding()

                            Button("Navigate Programmatically") {
                                isDetailViewActive = true
                            }
                            .padding()

                        }
                        
                    }
                    
                     
                   
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                        
                    } /// END OF FORM
                } /// END OF SECTION
            } /// END OF NAVIGATION VIEW
            .navigationTitle("Navigation")
            .navigationBarTitleDisplayMode(.inline)
            
        } /// END OF THE BODY
   
}

struct Navigations_Previews : PreviewProvider {
    
    static var previews: some View {
            
            Navigations()
            
    }
}

