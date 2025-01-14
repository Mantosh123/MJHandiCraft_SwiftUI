//
//  HomeView.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 04/01/25.
//

import SwiftUI

struct HomeView: View {
    
    var productType = [
        
        Product( id: UUID(), name: "Ganesh Ji", discription: "Ganesh Ji made by macram thread", photos: "ganeshJi", price: 900.0),
        Product( id: UUID(), name: "Mirror", discription: "Mirror holder made by macram thread", photos: "mirrirholder", price: 600.0),
        Product( id: UUID(), name: "Mobile Holder", discription: "Mobile Holder made by macram thread", photos: "mobileholder", price: 600.0),
        Product( id: UUID(), name: "Taddy Jhula", discription: "Taddy Juhla macram thread", photos: "taddyjhula", price: 930.0),
        Product( id: UUID(), name: "Mandla Art", discription: "Mandla Art discription", photos: "mandalArt", price: 600.0),

    ]
    
    var body: some View {
        
        NavigationStack {
            
            List(productType) { productType in
                
                
                HStack(alignment: .top) {
                    Image(productType.photos)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 70)
                    
                    VStack(alignment: .leading) {
                        
                        Text(productType.name)
                            .bold()
                        Text(productType.discription)
                            
                    }
                }
            }
            .navigationTitle("Select Categories")
        }
    }
}

#Preview {
    HomeView()
}
