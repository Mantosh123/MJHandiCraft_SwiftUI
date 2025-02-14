//
//  ProductGrid.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 30/01/25.
//

import SwiftUI

struct ProductGrid: View {
    let images = [
        "ganeshJi", "mirrirholder", "mobileholder", "taddyjhula", "mirrirholder",
        "taddyjhula", "mirrirholder", "mobileholder", "ganeshJi", "mirrirholder"
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
        
    var productCtagory: ProductCtagory
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                Text("You selected: \(productCtagory.name)")

                LazyVGrid(columns: columns, spacing: 2) {
                    ForEach(images.indices, id: \..self) { index in
                        
                        NavigationLink(destination: ProductDetailsView(imageName: images[index])) {
                            Image(images[index])
                                .resizable()
                                .scaledToFit()
                                .frame(height: CGFloat.random(in: 150...300))
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .toolbarBackground(Color.orange, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(productCtagory.name)
        }
    }
}
