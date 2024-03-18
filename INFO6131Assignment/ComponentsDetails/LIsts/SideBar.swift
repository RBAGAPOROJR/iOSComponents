//
//  SideBar.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-13.
//

import SwiftUI
import SafariServices

struct SideBar : View {
    
    @State private var columnVisibility = NavigationSplitViewVisibility.detailOnly
    
    var body : some View {
        
        
        NavigationView {
            
            Section {
                
                Form {
                    
                    Section( "In SwiftUI, the term \"Sidebar\" typically refers to a user interface element that displays a set of navigation or organizational options alongside the main content of an app. It's commonly used in macOS applications to provide quick access to different sections, features, or views. " ){}.padding( .bottom,-30 )
                    
                    Image( "sidebar" )
                        .resizable()
                        .aspectRatio( contentMode: .fit )
                        .frame( width: 400, alignment: .center )
                    
                    Section( "The term sidebar refers to a list of top-level app areas and collections, almost always displayed in the primary pane of a split view. When people choose an item in a sidebar, the split view displays the item’s details in a secondary pane or — if the item contains a list — the secondary pane presents the list and a tertiary pane presents the details. For example, Mail in iOS, iPadOS, macOS, and visionOS uses sidebar styling and behavior to display the list of accounts and mailboxes, typically displaying the message list in a secondary pane and a message’s content in a tertiary pane." ){}.padding( .bottom, -30 )
                    
                    Section( "Use a sidebar to help people quickly navigate to key areas of your app or top-level collections of content, like folders and playlists. A sidebar can help you flatten your information hierarchy, giving people access to several peer information categories or modes at the same time." ){}
                    
                    Section("To see the Sidebar : "){
                        Text("Rotate the screen of you phone.")
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/design/human-interface-guidelines/sidebars" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Sidebar")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
}


struct SideBar_Previews : PreviewProvider {
    
    static var previews : some View {
        
        SideBar()
        
    }
}

