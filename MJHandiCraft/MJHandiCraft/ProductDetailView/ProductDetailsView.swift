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
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width) // Full width of the screen
                        .offset(y: -UIScreen.main.bounds.height/2) // Move the image upwards
                                    
                    VStack {
                        Spacer()
                        Text("Content Below the Image")
                            .font(.title)
                            .padding()
                    }
                }
       
    }
}

#Preview {
    ProductDetailsView(imageName: "ganeshJi")
}
