//
//  INFO6131AssignmentApp.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

import SwiftUI

@main
struct INFO6131AssignmentApp: App {
    var body: some Scene {
        WindowGroup {
            ComponentsView( viewModel: ComponentsLVM() )
        }
    }
}
