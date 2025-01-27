//
//  ProductDetailsView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 27/01/25.
//

import SwiftUI



struct ProductDetailsView: View {
    
    
    let columns: [GridItem] = [
        GridItem (.flexible()),
        GridItem (.flexible()),
        GridItem (.flexible()),
    ]
    
    let arrValue = Array(1...5)
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(arrValue, id: \.self) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                                .frame(height: 150)
                            Text("\(item)")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                        }
                    }
                }
                .padding()
            }
        }
    
}

#Preview {
    ProductDetailsView()
}
