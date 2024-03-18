//
//  ComponentsLVM.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

import SwiftUI
import Observation

@Observable
final class ComponentsLVM : ObservableObject {
    
    var groupedComponents   : [ String : [ Components ] ] = [ : ]
    var component           : ComponentsStore
    var navTitle            : String = ""
    var searchBox           : String = ""
    var searchResults       : [ Components ] = []
    
    init() {
        
        component = ComponentsStore.testStore
        groupComponents()
        
    }

    func groupComponents() {
        
        groupedComponents = Dictionary( grouping : component.component, by : { $0.attributeType } )
        
    }

    var listData : [ Components ] {
        
        return searchBox.isEmpty ? component.component : searchResults
        
    }
    
    init( component : ComponentsStore = ComponentsStore.testStore, navTitle : String = "Components" ) {
        
        self.component  = component
        self.navTitle   = navTitle
        
    }
    
    func filterSearch() {
        
        searchResults = component.component.filter { component in
            
            let attriName = "\( component.attriName )"
            return attriName.localizedCaseInsensitiveContains( searchBox )
            
        }
    }
    
}


