//
//  ComponentsStore.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

import Foundation
import Observation

@Observable
final class ComponentsStore {
    
    var component : [ Components ]
    
    init( component : [ Components ] = mockData  ) {
        
        self.component = component
        
    }
}

extension ComponentsStore {
    
    static var mockData = [
        
        /// MOCK DATA FOR TEXT INPUT / OUTPUT * * *
        Components( attributeName  : "Text",
                    attributeType  : "Text Input / Output",
                    attributeIcons : "textformat",
                    attributeLink   : "textIO"  ),

        Components( attributeName  : "Label",
                    attributeType  : "Text Input / Output",
                    attributeIcons : "list.dash.header.rectangle",
                    attributeLink   : "labelIO"  ),
        
        Components( attributeName  : "TextField",
                    attributeType  : "Text Input / Output",
                    attributeIcons : "text.viewfinder",
                    attributeLink   : "txtFieldIO"  ),
        
        Components( attributeName  : "SecureField",
                    attributeType  : "Text Input / Output",
                    attributeIcons : "key.viewfinder",
                    attributeLink   : "secField"  ),
        
        Components( attributeName  : "Image",
                    attributeType  : "Text Input / Output",
                    attributeIcons : "photo.on.rectangle.angled",
                    attributeLink   : "image"  ),
        
        /// MOCK DATA FOR CONTROLS * * *
        Components( attributeName  : "Buttons",
                    attributeType : "Controls",
                    attributeIcons : "button.horizontal",
                    attributeLink   : "btn"  ),
        
        Components( attributeName  : "Menu",
                    attributeType : "Controls",
                    attributeIcons : "menucard",
                    attributeLink   : "menu"  ),
        
        Components( attributeName  : "Link",
                    attributeType : "Controls",
                    attributeIcons : "link",
                    attributeLink   : "link"  ),
        
        Components( attributeName  : "Slider",
                    attributeType : "Controls",
                    attributeIcons : "slider.horizontal.3",
                    attributeLink   : "slider"  ),
        
        Components( attributeName  : "Stepper",
                    attributeType : "Controls",
                    attributeIcons : "plus.forwardslash.minus",
                    attributeLink   : "stepper"  ),
        
        Components( attributeName  : "Toggle",
                    attributeType : "Controls",
                    attributeIcons : "switch.2",
                    attributeLink   : "toggle"  ),
        
        Components( attributeName  : "Picker",
                    attributeType : "Controls",
                    attributeIcons : "hand.tap",
                    attributeLink   : "picker"  ),
        
        Components( attributeName  : "Progress",
                    attributeType : "Controls",
                    attributeIcons : "bar",
                    attributeLink   : "progress"  ),
        
        /// MOCK DATA FOR CONTAINER VIEWS * * *
        Components( attributeName  : "HStack",
                    attributeType : "Container",
                    attributeIcons : "align.horizontal.center",
                    attributeLink   : "hStack"  ),
        
        Components( attributeName  : "VStack",
                    attributeType : "Container",
                    attributeIcons : "align.vertical.center",
                    attributeLink   : "vStack"  ),
        
        Components( attributeName  : "ZStack",
                    attributeType : "Container",
                    attributeIcons : "square.stack.3d.down.forward",
                    attributeLink   : "zStack"  ),
        
        Components( attributeName  : "Form",
                    attributeType : "Container",
                    attributeIcons : "doc.on.clipboard",
                    attributeLink   : "form"  ),
        
        Components( attributeName  : "Navigation",
                    attributeType : "Container",
                    attributeIcons : "square.3.layers.3d.top.filled",
                    attributeLink   : "navigation"  ),
        
        Components( attributeName  : "Alerts",
                    attributeType : "Container",
                    attributeIcons : "eye.trianglebadge.exclamationmark",
                    attributeLink   : "alerts"  ),
        
        Components( attributeName  : "Sheets",
                    attributeType : "Container",
                    attributeIcons : "arrow.up.doc",
                    attributeLink   : "sheets"  ),
        
        /// MOCK DATA FOR LIST  * * *
        Components( attributeName  : "Plain",
                    attributeType : "List",
                    attributeIcons : "doc.plaintext",
                    attributeLink   : "plains"  ),
        
        Components( attributeName  : "Inset",
                    attributeType : "List",
                    attributeIcons : "rectangle.portrait.leftthird.inset.filled",
                    attributeLink   : "insets"  ),
        
        Components( attributeName  : "Grouped",
                    attributeType : "List",
                    attributeIcons : "doc.text.image",
                    attributeLink   : "grouped"  ),
        
        Components( attributeName  : "Inset Grouped",
                    attributeType : "List",
                    attributeIcons : "chart.bar.doc.horizontal",
                    attributeLink   : "insetG"  ),
        
        Components( attributeName  : "Sidebar",
                    attributeType : "List",
                    attributeIcons : "sidebar.squares.left",
                    attributeLink   : "sideBar"  ),
        
    ]

    static var testStore : ComponentsStore = ComponentsStore(  component : mockData  )
    
}
