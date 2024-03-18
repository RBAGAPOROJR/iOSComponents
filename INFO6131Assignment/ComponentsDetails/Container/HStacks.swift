//
//  HStack.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct HStacks : View {
    
    var body: some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "HStack is a container view that arranges its child views horizontally, from leading to trailing. It's commonly used to create horizontal stacks of elements within your user interface." ){}
                    
                    Section( "Here's a basic example of how you can use the HStack : " ) {
                        HStack( spacing: 10 ) {
                            Text( "Hello" )
                            Text( "World!" )
                        }
                        .padding()
                        .background( Color.gray.opacity( 0.2 ) )
                        .cornerRadius( 10 )
                    } .frame( maxWidth: .infinity, alignment: .center )
                    
                    Section("In this example, the HStack contains three Text views that display \"Hello,\" and \"World!\". The child views are arranged horizontally, and the padding() modifier is applied to add some spacing around the HStack."){}.padding(.bottom,-30)
                    Section(" SAMPLE CODE : "){
                       Text("""
                        HStack( spacing: 10 ) {
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
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/hstack" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                        
                    } /// END OF FORM
                } /// END OF SECTION
            } /// END OF NAVIGATION VIEW
            .navigationTitle("HStack")
            .navigationBarTitleDisplayMode(.inline)
            
        } /// END OF THE BODY
    }


struct HStacks_Previews : PreviewProvider {
    
    static var previews: some View {
        
            HStacks()
            
    }
}
