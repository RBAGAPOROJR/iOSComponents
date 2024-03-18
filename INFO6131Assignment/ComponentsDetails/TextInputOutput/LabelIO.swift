//
//  LabelInputOutput.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-09.
//

import SwiftUI
import SafariServices

struct LabelIO : View {
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form{
                    Section( "A standard label for user interface items, consisting of an icon with a title." ){}
                    
                    Section( "One of the most common and recognizable user interface components is the combination of an icon and a label. This idiom appears across many kinds of apps and shows up in collections, lists, menus of action items, and disclosable lists, just to name a few." ){}
                    
                    Section("To use labels, you can either use SF Symbols like this :") {
                        VStack{
                            
                            Label( "Your account", systemImage: "folder.circle" )
                                .padding()
                            
                            Text( verbatim:
                                """
                                CODE :
                                
                                Label("Your account", systemImage: "folder.circle")
                                """
                            ).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .frame( maxWidth: .infinity, alignment: .leading )
                        }
                        .padding()
                    }
                    
                    Section( "To use labels, you can either use SF Symbols like this :" ) {
                        VStack{
                            
                            Label("Your account", systemImage: "person.crop.circle")
                                .font(.title)
                                .padding()
                            
                            Text(
                                """
                                CODE :
                                
                                Label("Your account", systemImage: "person.crop.circle") .font(.title)
                                """
                            )
                            .font(.system(size: 12, design: .monospaced))
                            .foregroundStyle(Color.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {

                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/label" )! )

                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                }/// END OF FORM
            }/// END OF SECTION VIEW
        }/// END OF NAVIGATION VIEW
        .navigationTitle( "Label" )
        .navigationBarTitleDisplayMode( .inline )
    } /// END OF BODY * * *
}


//extension UIApplication {
//    // 3
//    var KeyWindow : UIWindow? {
//        
//        return UIApplication.shared.connectedScenes
//            .compactMap { $0 as? UIWindowScene }
//            .filter { $0.activationState == .foregroundActive }
//            .first?.keyWindow
//        
//    }
//}

struct LabelIO_Previews : PreviewProvider {
    
    static var previews : some View {
        
        LabelIO()
        
    }
}
