//
//  ZStack.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct ZStacks : View {
    
    let colors : [ Color ] = [ .red, .orange, .yellow, .green, .blue, .purple ]
    
    var body: some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "the ZStack is a container view that arranges its child views in layers, allowing them to be stacked on top of each other along the z-axis. It's commonly used to overlay and position elements relative to one another." ){}
                    
                    Section( "Here's a basic example of how you can use the ZStack : " ) {
                        
                        ZStack {
                            ForEach( 0..<6 ) {
                                
                                Rectangle()
                                    .fill( colors[ $0 ] )
                                    .frame( width: 50, height: 50 )
                                    .offset( x: CGFloat( $0 ) * 10.0, y: CGFloat($0) * 10.0 )
                                
                            }
                        }.padding( .bottom, 60 )
                        .padding( .top )
 
                    } .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .center )
                        
                    
                    Section( "The ZStack is used as a container for a set of Rectangle views created using a ForEach loop. The ZStack is then placed within a Section in a Form. Note that the layout might need further adjustments based on your specific use case and the surrounding views in your SwiftUI hierarchy. If you encounter any issues or have specific requirements, feel free to provide more details, and I'll be happy to assist you further." ){}.padding( .bottom,-30 )
                    
                    Section(" SAMPLE CODE : "){

                        Text("""
                        let colors : [ Color ] = [ .red, .orange, .yellow, .green, .blue, .purple ]
                        
                        ZStack {
                            ForEach( 0..<6 ) {
                            Rectangle()
                                .fill( colors[ $0 ] )
                                .frame( width: 50, height: 50 )
                                .offset( x: CGFloat( $0 ) * 10.0, y: CGFloat($0) * 10.0 )
                                
                            }
                        """).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .padding()
                            .frame( maxWidth: .infinity, alignment: .leading )
                    }
                     
                    Section( "The ZStack contains two child views. The first child is a Color.blue that fills the entire available space, serving as the background. The second child is a VStack containing two Text views. The edgesIgnoringSafeArea modifier is applied to the Color to extend it to the edges of the screen, ignoring. The foregroundColor and font modifiers are applied to customize the appearance of the Text views." ){}
                    
                    Section( "Here's a basic example of how you can use the ZStack : " ) {
                        
                        ZStack {
                            Color.blue
                                .edgesIgnoringSafeArea(.all)

                            VStack {
                                Text("Hello")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                Text("SwiftUI")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }
                        }.padding( .bottom)
                        .padding( .top )
 
                    } .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .center )
                    
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/zstack" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                        
                    } /// END OF FORM
                } /// END OF SECTION
            } /// END OF NAVIGATION VIEW
            .navigationTitle("ZStack")
            .navigationBarTitleDisplayMode(.inline)
            
        } /// END OF THE BODY
}


struct ZStacks_Previews : PreviewProvider {
    
    static var previews: some View {
            
            ZStacks()
            
    }
}
