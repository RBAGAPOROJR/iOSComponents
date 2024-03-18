//
//  ComponentsRow.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

import SwiftUI


struct ComponentsRow : View {
    
    let component : Components
    
    var body : some View {

        
        HStack {
            
            if component.attributeIcons == "bar" {
                
                Image( "bar" )
                    .resizable()
                    .aspectRatio( contentMode: .fit )
                    .frame( width: 25, height: 30 )
                    .foregroundColor( .blue )
                
            } else {
                
                Image( systemName: component.attributeIcons )
                    .resizable()
                    .aspectRatio( contentMode: .fit )
                    .frame( width: 25, height: 25 )
                    .foregroundColor( .blue )
                
            }
            NavigationLink(
                
                destination: {
                    
                    switch component.attributeLink {
                        
                    case "textIO" :
                        return AnyView( TextIO() )
                    case "labelIO" :
                        return AnyView( LabelIO() )
                    case "txtFieldIO" :
                        return AnyView( TextFieldIO() )
                    case "secField" :
                        return AnyView( SecFieldIO() )
                    case "image" :
                        return AnyView( ImageIO() )
                    case "btn" :
                        return AnyView( Buttons() )
                    case "menu" :
                        return AnyView( Menus() )
                    case "link" :
                        return AnyView( Links() )
                    case "slider" :
                        return AnyView( Sliders() )
                    case "stepper" :
                        return AnyView( Steppers() )
                    case "toggle" :
                        return AnyView( Toggles() )
                    case "picker" :
                        return AnyView( Pickers() )
                    case "progress" :
                        return AnyView( Progress() )
                    case "hStack" :
                        return AnyView( HStacks() )
                    case "vStack" :
                        return AnyView( VStacks() )
                    case "zStack" :
                        return AnyView( ZStacks() )
                    case "form" :
                        return AnyView( Forms() )
                    case "navigation" :
                        return AnyView( Navigations() )
                    case "alerts" :
                        return AnyView( Alerts() )
                    case "sheets" :
                        return AnyView( Sheets() )
                    case "plains" :
                        return AnyView( PlainLists() )
                    case "insets" :
                        return AnyView( InsetLists() )
                    case "grouped" :
                        return AnyView( GroupedLists() )
                    case "insetG" :
                        return AnyView( InsetGrouped() )
                    case "sideBar" :
                        return AnyView( SideBar() )
                        
                    default:
                        return AnyView( EmptyView() )
                        
                    }
                }(),
            label: {
                    
            Text( component.attributeName )
                .font( .headline )
            
                }
            )
        }
        
    } /// END OF BODY * * *
}


#Preview {
    
    ComponentsRow( component : ComponentsStore.testStore.component[ 0 ] )
    
}

