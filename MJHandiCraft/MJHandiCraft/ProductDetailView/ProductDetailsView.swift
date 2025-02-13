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
        
        
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
                .edgesIgnoringSafeArea(.all)
            
        }
        
    }
}

#Preview {
    ProductDetailsView(imageName: "")
}
