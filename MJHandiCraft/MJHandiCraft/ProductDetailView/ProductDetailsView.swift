//
//  ProductDetailsView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 27/01/25.
//

import SwiftUI

struct ProductDetailsView: View {
    
    let imageName: String
    
    var body: some View {
        ZStack {
            // Background content (if needed)
            Color.white.ignoresSafeArea()
            
            // Image positioned at the top bezel
            Image(imageName) // Replace with your actual image asset name
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width) // Full width of the screen
                .offset(y: -100) // Move the image upwards
            
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Text("   Mirror Holder   ").font(.title)
                    .background(in: .capsule, fillStyle: FillStyle())
                Text("  Price: 500/-  ").font(.subheadline)
                    .background(in: .capsule, fillStyle: FillStyle())
                    .foregroundColor(.red)
                Spacer()
            }
        }
        
    }
}

#Preview {
    ProductDetailsView(imageName: "ganeshJi")
}
