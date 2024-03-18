//
//  Links.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-11.
//

import SwiftUI
import SafariServices

struct Links : View {
    
    var body : some View {
        
        NavigationView {
            
            Section {
                
                Form {
                    
                    Section(" -  In SwiftUI, the Link view is used to create hyperlinks or clickable text that, when tapped, opens a specified destination URL. It allows you to create interactive text that serves as a navigation element in your user interface. The Link view is particularly useful for connecting users to external websites or navigating within your app. ") {}
                    
                    Section( "Here's a basic example of how you can use the Link in SwiftUI : " ) {
                        VStack{
                            Link( "Visit Our Site", destination: URL( string: "https://developer.apple.com/documentation/swiftui")! )
                                .padding()
                            
                            
                            Text("• Create a link by providing a destination URL and a title. The title tells the user the purpose of the link, and can be a string, a title key that produces a localized string, or a view that acts as a label. " ).padding( .top, 10)
                        }
                    }
                    
                    Section{
                        VStack{
                            
                            Link( destination : URL( string: "https://developer.apple.com/documentation/swiftui" )! ) {
                                Image( systemName: "link.circle.fill" )
                                    .font( .largeTitle )
                                    .padding()
                            }.frame( maxWidth: .infinity )
                            
                            Text("• And if you’d rather create your own view rather than just use text, you can do use Icons from SF Symbols or you have prefered Images. " ).padding( .top, 10)
                        }
                    }
                   
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/link" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                    
                } /// END OF ScrollView
            } /// END OF VStack
        } /// END OF NAVIGATION VIEW
        .navigationBarTitle( "Link" )
        .navigationBarTitleDisplayMode(.inline)
    } /// END OF BODY
}


#Preview {
    Links()
}
