//
//  Components.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

import Foundation

struct Components : Identifiable {
    
    // Properties
    let id              =   UUID()
    let attributeName   :   String
    let attributeType   :   String
    
    let attributeIcons  :   String
    var attributeLink   :   String
    
    var attriName : String {
        
        "\( attributeName )"
        
    }

    
    internal init( id : UUID = UUID(), attributeName : String, attributeType : String, attributeIcons : String, attributeLink : String ) {
        
        self.attributeName  =   attributeName
        self.attributeType  =   attributeType
        self.attributeIcons =   attributeIcons
        self.attributeLink  =   attributeLink
        
    }
}
