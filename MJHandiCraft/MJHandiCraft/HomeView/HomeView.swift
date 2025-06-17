//
//  HomeView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 04/01/25.
//

import SwiftUI

struct HomeView: View {
    
    var productType = [
        
        ProductCategory( id: UUID(), name: "Ganesh Ji", description: "Ganesh Ji made by macram thread", image: "ganeshJi", products: []),
        ProductCategory( id: UUID(), name: "Mirror", description: "Mirror holder made by macram thread", image: "mirrirholder", products: []),
        ProductCategory( id: UUID(), name: "Mobile Holder", description: "Mobile Holder made by macram thread", image: "mobileholder", products: []),
        ProductCategory( id: UUID(), name: "Taddy Jhula", description: "Taddy Juhla macram thread", image: "taddyjhula", products: []),
        ProductCategory( id: UUID(), name: "Mandla Art", description: "Mandla Art discription", image: "mandalArt", products: []),
        ProductCategory( id: UUID(), name: "Mobile Holder", description: "Mobile Holder made by macram thread", image: "mobileholder", products: []),
        ProductCategory( id: UUID(), name: "Taddy Jhula", description: "Taddy Juhla macram thread", image: "taddyjhula", products: []),
        ProductCategory( id: UUID(), name: "Mandla Art", description: "Mandla Art discription", image: "mandalArt", products: []),
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
                        ProductCellView(title: productType.name, subtitle: productType.description, imageName: productType.image)
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
