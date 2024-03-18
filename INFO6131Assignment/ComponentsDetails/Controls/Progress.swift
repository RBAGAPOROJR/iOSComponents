//
//  Progress.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-12.
//

import SwiftUI
import SafariServices

struct Progress : View {
    
    @State private var progressValue: Float = 0.5
    @State private var progress = 0.5
    @State private var progressTwo = 0.10
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    let workoutDateRange = Date()...Date().addingTimeInterval(5*60)

    var body: some View {
        
        NavigationView {
            
            Section{
                
                Form {
                    
                    Section( "the ProgressView is used to create a visual representation of the progress of a task or operation. It is commonly used to show the progress of activities such as file downloads, data uploads, or any other process that takes time to complete." ){}
                    
                    Section( "Here's a basic example of how you can use the ProgressView :" ) {
                        VStack {
                            ProgressView(value: progressValue)
                                .padding()

                            Button("Increase Progress") {
                                withAnimation {
                                    progressValue += 0.1
                                    // Ensure progressValue doesn't exceed 1.0
                                    progressValue = min(progressValue, 1.0)
                                }
                            }
                            .padding()
                        }
                        
                    }
                    
                    Section("Use a progress view to show that a task is incomplete but advancing toward completion. A progress view can show both determinate (percentage complete) and indeterminate (progressing or not) types of progress."){}.padding(.bottom,-30)
                    Section("Create a determinate progress view by initializing a ProgressView with a binding to a numeric value that indicates the progress, and a total value that represents completion of the task. By default, the progress is 0.0 and the total is 1.0."){}.padding(.bottom,-30)
                    Section("The example below uses the state property progress to show progress in a determinate ProgressView. The progress view uses its default total of 1.0, and because progress starts with an initial value of 0.5, the progress view begins half-complete. A “More” button below the progress view allows people to increment the progress in increments of five percent : "){
                        VStack {
                            ProgressView(value: progress)
                                .padding()
                            Button("Clicke me") { progress += 0.05 }
                        }
                    }
                    
                    Section( "You can also create a progress view that covers a closed range of Date values. As long as the current date is within the range, the progress view automatically updates, filling or depleting the progress view as it nears the end of the range. The following example shows a five-minute timer whose start time is that of the progress view’s initialization : " ) {
                        
                        ProgressView( timerInterval: workoutDateRange ) {
                             Text("Workout")
                         }
                        
                    }
                    
                    Section("SwiftUI provides two built-in progress view styles, linear and circular, as well as an automatic style that defaults to the most appropriate style in the current context. The following example shows a circular progress view that starts at 60 percent completed. ") {
                        Image( "loading" )
                            .resizable()
                            .aspectRatio( contentMode: .fit )
                            .frame( width: 35, height: 35 )
                            .frame( maxWidth: .infinity, alignment: .center)
                            .padding()
                    }
                    
                    Section("SwiftUI’s ProgressView can be bound to a Double to show a horizontal progress bar. For example, this creates a progress bar with the title “Downloading”, that will read downloadAmount to determine how full the progress bar should be : " ){
                        
                        ProgressView( "Downloading…", value: downloadAmount, total: 100 )
                            .onReceive(timer) { _ in
                                if downloadAmount < 100 {
                                    
                                    downloadAmount += 2
                                    
                                }
                            }.padding()
                    }
                    
                  
                    
                    /// FOOTER SECTION HERE * * *
                    Section(""){}.padding(.bottom,30)
                    VStack {
                        Button("Documentations") {
                            let vc = SFSafariViewController( url: URL( string: "https://developer.apple.com/documentation/swiftui/progressview" )! )
                            UIApplication.shared.firstKeyWindow?.rootViewController?.present( vc, animated: true )
                        }.frame( maxWidth: .infinity, alignment: .center )
                    }
                } /// END OF FORM
            } /// END OF SECTION
        } /// END OF NAVIGATION VIEW
        .navigationTitle("Progress View")
        .navigationBarTitleDisplayMode(.inline)
        
    } /// END OF THE BODY
}

struct Progress_Previews : PreviewProvider {
    
    static var previews: some View {
            
            Progress()
            
    }
}
