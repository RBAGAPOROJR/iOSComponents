//
//  ImageIO.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-11.
//

import SwiftUI
import SafariServices

struct ImageIO : View {
    
    var body: some View {
        
        NavigationView {
            
            Section{
                Form{
                    Section(" -  Use an Image instance when you want to add images to your SwiftUI app. You can create images from many sources:  "){}
                    
                    
                    Section{
                        
                        Text("• Image files in your app’s asset library or bundle. Supported types include PNG, JPEG, HEIC, and more. ").padding( .top, 10)
                        
                        Text("• Instances of platform-specific image types, like UIImage and NSImage. ").padding( .top, 3 )
                        
                        Text("• .textFieldStyle(RoundedBorderTextFieldStyle()) applies a rounded border style to the secure text field.").padding( .top, 3 )
                        
                        Text("• A bitmap stored in a Core Graphics CGImage instance. ").padding( .top, 3 )
                        
                        Text("• System graphics from the SF Symbols set. ").padding( .top, 3 )
                        
                    } .frame( maxWidth: 400, alignment: .leading )
                    
                    Section("In this example from SF Symbols : ") {
                        
                        Image( systemName: "star.fill" )
                            .resizable()
                            .frame( width: 50, height: 50 )
                            .frame( maxWidth: .infinity )
                            .padding()
                        
                        Text(
                        """
                        CODE :
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        """
                        ).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .frame( maxWidth: .infinity, alignment: .leading )
                        
                        
                    }
                    
                    Section("In this example from SF Symbols : ") {
                        
                        Image( "fanshawe" )
                            .resizable()
                            .frame( width: 80, height: 80 )
                            .frame( maxWidth: .infinity )
                            .padding()
                        
                        Text(
                        """
                        CODE :
                        
                        Image(systemName: "fanshawe")
                            .resizable()
                            .frame(width: 80, height: 80)
                        
                        """
                        ).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .frame( maxWidth: .infinity, alignment: .leading )
                        
                        
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/image" )! )
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                }
            }
        }/// END OF NAVIGATION VIEW
        .navigationTitle( "Image" )
        .navigationBarTitleDisplayMode( .inline )
    } /// END OF BODY * * *
}



struct ImageIO_Previews : PreviewProvider {
    
    static var previews : some View {
        
        ImageIO()
        
    }
}
