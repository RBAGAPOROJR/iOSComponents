//
//  InsetGrouped.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-13.
//

import SwiftUI
import SafariServices

struct InsetGrouped : View {
    
    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "On iOS, the inset grouped list style displays a continuous background color that extends from the section header, around both sides of list items in the section, and down to the section footer. This visually groups the items to a greater degree than either the inset or grouped styles do." ){}.padding( .bottom,-30 )
                    
                    
                    Section( "Available when Self is InsetGroupedListStyle :" ){
                        Text( verbatim :
                            """
                            static var insetGrouped: InsetGroupedListStyle { get }
                            """
                        )
                        .font( .system( size: 12, design: .monospaced ) )
                        .foregroundStyle( Color.gray )
                        .padding()
                        .frame( maxWidth: .infinity, alignment: .leading )
                    }
                    
                    
                    Section( "In general, SwiftUI provides a set of views for arranging and formatting user interface elements. The Group view, as mentioned earlier, is used for grouping views without affecting layout. The InsetGroup may be a term you encountered in a specific context or documentation, and its meaning would depend on the specific SwiftUI version or library you are using." ){}
                    
                    Section( "SwiftUI’s List views have a listStyle() modifier to control how the list looks, and there are two options you’re likely to want: .grouped (or GroupedListStyle() for Xcode 12) to get the old-style grouping of items, and .insetGrouped (or InsetGroupedListStyle() for Xcode 12) to get the newer style grouping of items." ){}.padding( .bottom, -30)
                    
                    Section( "For example, this defines an example row and places it inside a grouped list :" ){}
                    
                    Section{
                        List {
                            Section(header: Text("Examples")) {
                                ExampleRow()
                                ExampleRow()
                                ExampleRow()
                            }
                        }
                        .listStyle(.grouped)
                    }.frame(idealHeight: 200)
                    
                    
                    Section( "Sample code :" ){
                        Text( verbatim :
                            """
                            List {
                                Section(header: Text("Examples")) {
                                    ExampleRow()
                                    ExampleRow()
                                    ExampleRow()
                                }
                            }
                            .listStyle(.grouped)
                            """
                        )
                        .font( .system( size: 12, design: .monospaced ) )
                        .foregroundStyle( Color.gray )
                        .padding()
                        .frame( maxWidth: .infinity, alignment: .leading )
                        
                        Text( verbatim :
                            """
                            struct ExampleRow: View {
                                var body: some View {
                                    Text("Example Row")
                                }
                            }
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
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/liststyle/insetgrouped" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Group")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
}

struct ExampleRow: View {
    var body: some View {
        Text("Example Row")
    }
}

struct InsetGrouped_Previews : PreviewProvider {
    
    static var previews : some View {
        
        InsetGrouped()
        
    }
}
