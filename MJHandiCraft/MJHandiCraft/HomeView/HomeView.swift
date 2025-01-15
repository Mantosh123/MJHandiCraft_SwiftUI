//
//  HomeView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 04/01/25.
//

import SwiftUI

struct HomeView: View {
    
    var productType = [
        
        ProductCtagory( id: UUID(), name: "Ganesh Ji", discription: "Ganesh Ji made by macram thread", image: "ganeshJi"),
        ProductCtagory( id: UUID(), name: "Mirror", discription: "Mirror holder made by macram thread", image: "mirrirholder"),
        ProductCtagory( id: UUID(), name: "Mobile Holder", discription: "Mobile Holder made by macram thread", image: "mobileholder"),
        ProductCtagory( id: UUID(), name: "Taddy Jhula", discription: "Taddy Juhla macram thread", image: "taddyjhula"),
        ProductCtagory( id: UUID(), name: "Mandla Art", discription: "Mandla Art discription", image: "mandalArt"),

    ]
    
    var body: some View {
        
        NavigationStack {
            
            List(productType) { productType in
                
                ProductCellView(title: productType.name, subtitle: productType.discription, imageName: productType.image)
            }
            .navigationTitle("Select Categories")
        }
    }
}

#Preview {
    HomeView()
}
