//
//  ProductCellView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 13/01/25.
//

import SwiftUI

struct ProductCellView: View {
    var title: String
    var subtitle: String
    var imageName: String
    
    var body: some View {
        HStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding()
                .background(Color.blue.opacity(0.2))
                .clipShape(Rectangle())
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.vertical, 8)
            
            Spacer()
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview(body: {
    ProductCellView(title: "title", subtitle: "subtitle", imageName: "person.fill")
    ProductCellView(title: "title", subtitle: "subtitle", imageName: "person.fill")

})
