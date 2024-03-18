//
//  ContentView.swift
//  INFO6131Assignment
//
//  Created by RNLD on 2024-03-08.
//

import SwiftUI

struct ComponentsView : View {
    
    @State var viewModel : ComponentsLVM
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach( viewModel.groupedComponents.keys.sorted(), id: \.self ) { attributeType in
                    if viewModel.searchBox.isEmpty || viewModel.groupedComponents[ attributeType ]!.contains( where: {
                        
                        $0.attriName.localizedCaseInsensitiveContains( viewModel.searchBox ) } ) {
                        
                        Section( header: Text( attributeType ) ) {
                            
                            ForEach(viewModel.groupedComponents[ attributeType ]!.filter {
                                
                                viewModel.searchBox.isEmpty || $0.attriName.localizedCaseInsensitiveContains( viewModel.searchBox )
                                
                            }, id: \.id ) { component in
                                
                                ComponentsRow( component: component )
                                
                            }
                        }
                    }
                } /// END OF ForEach * * *
            } /// END OF LIST * * *
            // .navigationTitle( viewModel.navTitle )
            .navigationTitle( "Components" )
            .searchable( text: $viewModel.searchBox, placement: .navigationBarDrawer( displayMode: .always ), prompt: "Search" )
            .onChange( of: viewModel.searchBox ) {
                
                viewModel.filterSearch()
                
            }
            .animation( .easeInOut, value: viewModel.searchBox )
        } /// END OF NavigationStack * * *
        
        /// * * * * * FOOTER * * * * *
        VStack {
            Spacer()
            Text( "INFO6131 | Assignment #1 | © RONALD BAGAPORO JR." )
                .foregroundColor( .gray )
                .font( .footnote )
        }
        .frame( height : 10 )
    }
}


#Preview {
    
    ComponentsView( viewModel: ComponentsLVM() )
    
}
