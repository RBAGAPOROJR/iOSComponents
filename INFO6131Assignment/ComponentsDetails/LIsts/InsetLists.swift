//
//  InsetLists.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-13.
//

import SwiftUI
import SafariServices

struct InsetLists : View {
    
    var body : some View {
        
        Section{
            
            List(0..<50) { i in
                Text("Row \(i)")
            }
            
            .safeAreaInset(edge: .bottom) {
                Text("Outside Safe Area")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.indigo)
            }
        }
        
        Section( "In SwiftUI, the term \"Plain\" typically doesn't refer to a specific SwiftUI component or concept. However, you might be referring to a \"Plain\" style in the context of lists or other UI elements." ){}.padding( .bottom,-30 )
        
        
        
        /// FOOTER SECTION HERE * * *
        Section(""){}.padding(.bottom,30)
        VStack {
            Button("Documentations") {
                // 1
                let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/insettableshape/inset(by:)" )! )
                // 2
                UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
            }.frame( maxWidth: .infinity, alignment: .center )
        }
        
        
        .navigationTitle("Inset")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
}


struct InsetLists_Previews : PreviewProvider {
    
    static var previews : some View {
        
        InsetLists()
        
    }
}
