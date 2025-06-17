//
//  HomeView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 04/01/25.
//

import SwiftUI

struct HomeView: View {
    
    var productType = [
        
        ProductCategory( id: UUID(), name: "Ganesh Ji", discription: "Ganesh Ji made by macram thread", image: "ganeshJi"),
        ProductCategory( id: UUID(), name: "Mirror", discription: "Mirror holder made by macram thread", image: "mirrirholder"),
        ProductCategory( id: UUID(), name: "Mobile Holder", discription: "Mobile Holder made by macram thread", image: "mobileholder"),
        ProductCategory( id: UUID(), name: "Taddy Jhula", discription: "Taddy Juhla macram thread", image: "taddyjhula"),
        ProductCategory( id: UUID(), name: "Mandla Art", discription: "Mandla Art discription", image: "mandalArt"),
        ProductCategory( id: UUID(), name: "Mobile Holder", discription: "Mobile Holder made by macram thread", image: "mobileholder"),
        ProductCategory( id: UUID(), name: "Taddy Jhula", discription: "Taddy Juhla macram thread", image: "taddyjhula"),
        ProductCategory( id: UUID(), name: "Mandla Art", discription: "Mandla Art discription", image: "mandalArt"),
    ]
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.orange, .blue]),
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
                    )
                    .ignoresSafeArea()
                List(productType) { productType in
                    
                    NavigationLink(destination: ProductGrid(productCategory: productType)) {
                        ProductCellView(title: productType.name, subtitle: productType.discription, imageName: productType.image)
                            .listRowSeparator(.hidden)
                            .navigationTitle("Product Categories")
                    }
                    .listRowSeparator(.hidden)
                    .navigationBarBackButtonHidden()
                }
                .scrollContentBackground(.hidden) // hides default background
                .background(Color.clear) // sets list background to clear                .toolbarBackground(Color.orange, for: .navigationBar)
                .toolbarColorScheme(.light, for: .navigationBar)
            }
        }
    }
}

#Preview {
    HomeView()
}
