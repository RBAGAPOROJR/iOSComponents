//
//  Sheets.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Sheets : View {
    
    @State private var isSheetPresented = false
    @State private var showingSheet = false

    var body : some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "SwiftUI’s sheets are used to present new views over existing ones, while still allowing users to drag down to dismiss the new view when they are ready. To use a sheet, give it something to show (some text, an image, a custom view, etc), add a Boolean that defines whether the detail view should be showing, then attach it to your main view as a modal sheet." ){}.padding( .bottom,-30 )
                    
                    Section( "For example, this creates a simple detail view, then presents it from ContentView when a button is tapped :" ){
                    Button("Show Sheet") {
                            isSheetPresented = true
                        }
                        .sheet(isPresented: $isSheetPresented) {
                            
                            SheetContent( isSheetPresented: $isSheetPresented )
                            
                        }
                    }.frame( maxWidth: .infinity )
                    .padding()
                    
                    Section( "In this example, the SheetContent view now takes a binding to isSheetPresented. When the \"Dismiss\" button is tapped, it sets isSheetPresented to false, effectively dismissing the sheet. By using a binding, the changes made to isSheetPresented in SheetContent will affect the original state variable in ContentView, closing the sheet." ){}
                    
                    Section( "this creates a simple detail view, then presents it from ContentView when a button is tapped:" ){
                        Button("Show Sheet") {
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet) {
                            SheetView()
                        }
                    }.frame( maxWidth: .infinity )
                        .padding()
                    
                    
                    
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            // 1
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/view/sheet(ispresented:ondismiss:content:)" )! )
                            // 2
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                    
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Sheets")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
    
}

struct SheetContent: View {
    
    @Binding var isSheetPresented: Bool
    
    var body: some View {
    
        VStack {
        
            Text("This is the sheet content.")
            Button("Dismiss") {
            
                isSheetPresented = false

            }
            .padding()
        }
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}


struct Sheets_Provivers : PreviewProvider {
    
    static var previews: some View {
        
        Sheets()
        
    }
}
