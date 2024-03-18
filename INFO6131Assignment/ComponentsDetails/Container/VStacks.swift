//
//  VStacks.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct VStacks : View {
    
    var body: some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "VStack is a container view that arranges its child views vertically, from top to bottom. It's commonly used to create vertical stacks of elements within your user interface." ){}
                    
                    Section( "Here's a basic example of how you can use the VStack : " ) {
                        VStack( spacing: 20 ) {
                            Text( "Hello" )
                            Text( "World!" )
                        }
                        .padding()
                        .background( Color.gray.opacity( 0.2 ) )
                        .cornerRadius( 10 )
                    } .frame( maxWidth: .infinity, alignment: .center )
                    
                    Section( "The child views are arranged vertically, and the padding() modifier is applied to add some spacing around the VStack. You can customize the appearance of the VStack by adjusting various modifiers, such as spacing, alignment, and distribution. Additionally, you can nest other views and containers within a VStack to create more complex layouts." ){}.padding( .bottom,-30 )
                    
                    Section(" SAMPLE CODE : "){
                        Text("""
                        VStack( spacing: 20 ) {
                            Text( "Hello" )
                            Text( "World!" )
                        }
                        """).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .padding()
                            .frame( maxWidth: .infinity, alignment: .leading )
                    }
                        

                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/vstack" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                        
                    } /// END OF FORM
                } /// END OF SECTION
            } /// END OF NAVIGATION VIEW
            .navigationTitle("VStack")
            .navigationBarTitleDisplayMode(.inline)
            
        } /// END OF THE BODY
    }


struct VStacks_Previews : PreviewProvider {
    
    static var previews: some View {
            
            VStacks()
            
    }
}

