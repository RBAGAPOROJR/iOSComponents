//
//  Text.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-09.
//

import SwiftUI
import SafariServices

struct TextIO : View {
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form{
                    
                    Section("is a view that displays one or more lines of read-only text."){}
                    
                    Section(" Defualt format : " ) {
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book." ) .frame( maxWidth: .infinity )
                        
                        Text(
                            """
                            CODE :
                            
                            Text( "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when . . . ." )
                            """
                        )
                        .font( .system( size: 12, design: .monospaced ) )
                        .foregroundStyle( Color.gray )
                        .padding()
                        .frame( maxWidth: .infinity, alignment: .leading )
                        
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/text" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                }
            }/// END OF SECTION VIEW
        } /// END OF NAVIGATION VIEW
        .navigationTitle( "Text" )
        .navigationBarTitleDisplayMode( .inline )
    } /// END OF BODY * * *
}

extension UIApplication {
    // 3
    var firstKeyWindow: UIWindow? {
        
        return UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .filter { $0.activationState == .foregroundActive }
            .first?.keyWindow
        
    }
}

struct TextIO_Previews : PreviewProvider {
    
    static var previews : some View {
        
        TextIO()
        
    }
}
