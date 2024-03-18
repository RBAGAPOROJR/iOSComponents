//
//  Toggles.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Toggles : View {
    
    @State private var showGreeting = false
    @State private var vibrateOnRing = true
    @State private var isToggled = false
    
    var body : some View {
        
        NavigationView {
            
            Section {
                
                Form {
                    
                    Section( " - Toggle view is used to create a user interface element that represents a binary switch, allowing users to toggle between two states, such as on/off or true/false. It's a simple and intuitive way to capture boolean input from the user." ){}
                    
                    Section( "Here's a basic example of how you can use the Toggle view : ") {
                        
                        VStack {
                            Toggle("Show welcome message", isOn: $showGreeting)
                                .padding()
                            
                            if showGreeting {
                                Text("Hello World!")
                            }
                        }
                        
                        Text("""
                        CODE :
                        
                        Toggle( "Show welcome message",
                                isOn : $showGreeting )
                        
                        if showGreeting {
                            Text( "Hello World!" )
                        }
                        """).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .padding()
                            .frame( maxWidth: .infinity, alignment: .leading )
                        
                    }
                    
                    Section {
                        Text( " - we could create a toggle that either shows a message or not depending on whether the toggle is enabled or not, but of course we don’t want to have to track the state of the toggle by hand – we want SwiftUI to do that for us." )
                        Text( " Instead we should define a @State Boolean property that will be used to store the current value of our toggle. We can then use that to show or hide other views as needed." ).padding( .top )
                    }.frame( maxWidth: 400, alignment: .leading )
                    
                    Section {
                        VStack{
                            Toggle(
                                "Vibrate on Ring",
                                systemImage: "dot.radiowaves.left.and.right",
                                isOn: $vibrateOnRing
                            ).padding()
                            
                            Text( "For the common case of Label based labels, you can use the convenience initializer that takes a title string (or localized string key) and the name of a system image : " )
                            
                        }
                        Text("""
                        CODE :
                        
                        Toggle( "Vibrate on Ring", systemImage :
                                "dot.radiowaves.left.and.right",
                        isOn : $vibrateOnRing
                           )
                        """).font( .system( size: 12, design: .monospaced ) )
                            .foregroundStyle( Color.gray )
                            .padding()
                            .frame( maxWidth: .infinity, alignment: .leading )
                    }
                    
                    Section {
                        Text( "As the user interacts with the toggle, the isToggled state is updated accordingly, and the displayed text reflects the current state. " )
                    
                        VStack {
                            Toggle("Toggle Switch", isOn: $isToggled)
                            
                            Text("Current State: \(isToggled ? "On" : "Off")")
                                .padding()
                        }
                        
                    }.padding()
                    

                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/toggle" )! )
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                }
            } /// END OF SECTION VIEW
        } /// END OF NAVIGATION VIEW
        .navigationTitle( "Toggle" )
        .navigationBarTitleDisplayMode( .inline )
    }
}


struct Toggles_Previews : PreviewProvider {
    
    static var previews : some View {
        
        Toggles()
        
    }
}
