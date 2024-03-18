//
//  PlainList.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-13.
//

import SwiftUI
import SafariServices

struct PlainLists : View {
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "SwiftUI has several built-in shapes such as rectangles, circles, and capsules, each of which can be created, color, and positioned as needed." ){}.padding( .bottom,-30 )
                    
                    Section("In SwiftUI, the term \"Plain\" is commonly associated with specific view styles, such as ListStyle or PickerStyle, rather than being a standalone concept. For example, you might see the use of PlainListStyle or PlainPickerStyle."){}
                    
                    Section( "For example, if you wanted a 200x200 red rectangle, you would use this : " ){
                        Rectangle()
                            .fill( .blue )
                            .frame( width: 100, height: 100 )
                    }.frame( maxWidth: .infinity )
                    
                    Section( "Similarly, if you wanted a 100x100 blue circle you would use this :" ){
                        Circle()
                            .fill( .red )
                            .frame( width: 100, height: 100 )
                    }.frame( maxWidth: .infinity )
                    
                    Section("There’s a dedicated shape for rounded rectangles, allowing you to customize how much rounding should be applied, as well as having complete control over the type of rounding. For example, this creates a rounded rectangle with 25 points of rounding on each corner : " ){
                        RoundedRectangle( cornerRadius : 25 )
                            .fill( .green )
                            .frame( width: 150, height: 100 )
                    }.frame( maxWidth: .infinity )
                    
                    Section("Finally, SwiftUI provides a Capsule() shape as a specialized form of rounded rectangles, where the shortest edge of the rectangle is always fully rounded. This is a popular style with buttons, because you get a lozenge-shaped button in just a couple of lines of code : " ){
                        Capsule()
                            .fill( .yellow )
                            .frame( width: 150, height: 100 )
                    }.frame( maxWidth: .infinity )
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/primitivebuttonstyle/plain" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Plain")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
}



struct PlainList_Previews : PreviewProvider {
    
    static var previews : some View {
        
        PlainLists()
        
    }
}
