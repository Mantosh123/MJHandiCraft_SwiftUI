//
//  ProductDetailsView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 27/01/25.
//

import SwiftUI

//struct ProductDetailsView: View {
//    
//    let columns: [GridItem] = [
//        GridItem (.flexible()),
//        GridItem (.flexible()),
//        GridItem (.flexible()),
//    ]
//    
//    let arrValue = Array(1...5)
//    
//    var body: some View {
//            ScrollView {
//                LazyVGrid(columns: columns, spacing: 20) {
//                    ForEach(arrValue, id: \.self) { item in
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 10)
//                                .fill(Color.blue)
//                            // mirrirholder 
//                            Image("mirrirholder")
//                                //.frame(height: 150)
//                            Text("\(item)")
//                                .foregroundColor(.white)
//                                .font(.title)
//                                .bold()
//                        }
//                    }
//                }
//                .padding()
//            }
//        }
//    
//}
//
//#Preview {
//    ProductDetailsView()
//}

struct ProductDetailsView: View {
    let images = [
        "ganeshJi", "mirrirholder", "mobileholder", "taddyjhula", "mirrirholder",
        "taddyjhula", "mirrirholder", "mobileholder", "ganeshJi", "mirrirholder"
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(images.indices, id: \..self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFit()
                        .frame(height: CGFloat.random(in: 150...300))
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        PinterestGridView()
//    }
//}

//// Preview
//struct PinterestGridView: PreviewProvider {
//    static var previews: some View {
//        PinterestGridView()
//    }
//}

#Preview {
    ProductDetailsView()
}
