//
//  ComponentDetails.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

//import Foundation


import SwiftUI

struct ComponentDetails : View {
    
    let components : Components
    
    var body : some View {
        
        
        NavigationLink( destination : ComponentDetails( components : components ) ){
            
            //TODO: Complete detail view
            Text("COMPONENT DETIALS")
                .font(.largeTitle .bold() )
  
                
            }
        }
    }


#Preview {
    
    ComponentDetails( components: ComponentsStore.testStore.component[ 0 ] )
    
}

