//
//  GroupedLists.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-13.
//

import SwiftUI
import SafariServices

struct GroupedLists : View {
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "A type that collects multiple instances of a content type — like views, scenes, or commands — into a single unit." ){}.padding( .bottom,-30 )
                    Section( "Group view is a container that doesn't affect the layout or presentation of its child views. It's primarily used for organizing and grouping views together without introducing any additional visual elements or layout changes." ){}
                    
                    Section( "Here's a simple example of using Group :" ){
                        VStack {
                            Text("Hello")
                            
                            Group {
                                Text("World!")
                                Text("SwiftUI")
                            }
                            
                            Text("Welcome")
                        }.frame( maxWidth: .infinity )
                    }
                    
                    Section("Sample code :"){
                        Text( verbatim :
                            """
                            VStack {
                                Text("Hello")
                            
                                Group {
                                    Text("World!")
                                    Text("SwiftUI")
                                }
                            
                                Text("Welcome")
                            }
                            """
                        )
                        .font( .system( size: 12, design: .monospaced ) )
                        .foregroundStyle( Color.gray )
                        .padding()
                        //                        .font( .system( size: 12 ) )
                    }
                    
                    Section( "In this example, the Group is used to wrap two Text views ( \"World!\" and \"SwiftUI\" ). The Group itself doesn't introduce any visible changes to the layout or appearance."){}.padding( .bottom, -30 )
                    
                    Section( "The primary purpose of using Group is to create logical groupings of views for organizational purposes or to apply certain modifiers or operations to multiple views simultaneously." ){}.padding( .bottom, -30)
                    
                    Section( "In most cases, SwiftUI's automatic view composition and layout are sufficient, and you may not need to use Group explicitly. However, it can be handy in situations where you want to organize code or apply operations to a specific group of views without affecting the surrounding layout." ){}.padding( .bottom, -30)
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/group" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Group")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
}


struct GroupedLists_Previews : PreviewProvider {
    
    static var previews : some View {
        
        GroupedLists()
        
    }
}
