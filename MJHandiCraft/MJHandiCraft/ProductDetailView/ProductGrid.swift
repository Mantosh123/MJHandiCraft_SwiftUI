//
//  ProductGrid.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 30/01/25.
//

import SwiftUI

struct ProductGrid: View {
    // Sample data with random heights
    let items = (1...20).map { _ in GridItemModel(id: UUID(), height: CGFloat.random(in: 100...300)) }
    
    // Define a two-column layout
    let columns = [
        GridItem(.adaptive(minimum: 150), spacing: 2),
        GridItem(.adaptive(minimum: 120), spacing: 2),
        GridItem(.adaptive(minimum: 110), spacing: 2),
        GridItem(.adaptive(minimum: 150), spacing: 2),

    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(items) { item in
                    Rectangle()
                        .fill(Color.blue.opacity(0.7))
                        .frame(height: item.height)
                        .cornerRadius(12)
                        .overlay(
                            Text("\(Int(item.height))")
                                .font(.caption)
                                .foregroundColor(.white)
                            
                            
                        )
                    Image("mirrirholder")
                }
            }
            .padding()
        }
    }
}

// Data Model
struct GridItemModel: Identifiable {
    let id: UUID
    let height: CGFloat
}

// Preview
struct PinterestGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGrid()
    }
}
