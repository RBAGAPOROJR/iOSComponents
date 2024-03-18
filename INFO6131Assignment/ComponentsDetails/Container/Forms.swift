//
//  Forms.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Forms : View {
    
    @State private var notifyMeAbout: NotifyMeAboutType = .directMessages
    @State private var playNotificationSounds = true
    @State private var sendReadReceipts = false
    @State private var profileImageSize: ProfileImageSize = .medium
    
    @State private var username = ""
    @State private var password = ""
    @State private var rememberMe = false
    
    var body : some View {
        
        NavigationView {
            
            Section{

                Form {
                    
                    Section( "SwiftUI applies platform-appropriate styling to views contained inside a form, to group them together. Form-specific styling applies to things like buttons, toggles, labels, lists, and more. Keep in mind that these stylings may be platform-specific. For example, forms apppear as grouped lists on iOS, and as aligned vertical stacks on macOS." ){}.padding( .bottom,-30 )
                    
                    Section( "The following example shows a simple data entry form on iOS, grouped into two sections. The supporting types (NotifyMeAboutType and ProfileImageSize) and state variables (notifyMeAbout, profileImageSize, playNotificationSounds, and sendReadReceipts) are omitted for simplicity." ){}
                        
                    Section(header: Text("Notifications")) {
                    
                        Picker("Notify Me About", selection: $notifyMeAbout) {
                            Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                            Text("Mentions").tag(NotifyMeAboutType.mentions)
                            Text("Anything").tag(NotifyMeAboutType.anything)
                        }
                        Toggle("Play notification sounds", isOn: $playNotificationSounds)
                        Toggle("Send read receipts", isOn: $sendReadReceipts)
                    }
                    
                    Section(header: Text("User Profiles")) {
                        Picker("Profile Image Size", selection: $profileImageSize) {
                            Text("Large").tag(ProfileImageSize.large)
                            Text("Medium").tag(ProfileImageSize.medium)
                            Text("Small").tag(ProfileImageSize.small)
                        }
                        Button("Clear Image Cache") {}
                    }
                    
                    Section( "the Form view is a container view that is specifically designed for creating lists of controls, such as text fields, toggles, pickers, etc. It provides a standard layout for presenting form elements, making it easy to create structured and organized user interfaces." ){}.padding( .bottom,-30 )
                    
                    Section( "Here's a basic example of how you can use the Form view:" ){
                        
                        Section(header: Text("Login Information")) {
                            
                            TextField("Username", text: $username)
                            SecureField("Password", text: $password)
                            
                        }

                        Section(header: Text("Options")) {
                            
                            Toggle("Remember Me", isOn: $rememberMe)
                            
                        }

                        Section {
                            Button( "Login" ) {
                                print( "Logging in..." )
                            }
                        }
                        
                    }
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/form" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                        
                    } /// END OF FORM
                } /// END OF SECTION
            } /// END OF NAVIGATION VIEW
            .navigationTitle("Forms")
            .navigationBarTitleDisplayMode(.inline)
            
        } /// END OF THE BODY
    
}

enum NotifyMeAboutType {
    case directMessages
    case mentions
    case anything
}

enum ProfileImageSize {
    case large
    case medium
    case small
}


struct Forms_Previews : PreviewProvider {
    
    static var previews: some View {
        
            Forms()
            
    }
}
