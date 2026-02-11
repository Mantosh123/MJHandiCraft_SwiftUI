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
        "taddyjhula", "mirrirholder", "mobileholder", "ganeshJi", "mirrirholder",
        "taddyjhula", "mirrirholder", "mobileholder", "ganeshJi", "mirrirholder"
    ]
    
    // Adaptive grid for a Pinterest-style flexible layout
    // This automatically fits as many columns as possible
    // based on available width, using the given minimum size.
    let columns = [
        GridItem(.adaptive(minimum: 110), spacing: 2)
    ]
        
    var productCategory: ProductCategory
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("You selected: \(productCategory.name)")

                LazyVGrid(columns: columns, spacing: 2) {
                    ForEach(images.indices, id: \.self) { index in
                        
                        NavigationLink(destination: ProductDetailsView(imageName: images[index])) {
                            Image(images[index])
                                .resizable()
                                .scaledToFit()
                                .frame(height: CGFloat.random(in: 140...290))
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .toolbarBackground(Color.orange, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(productCategory.name)
        }
    }
}
