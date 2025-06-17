//
//  Product.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 09/01/25.
//

import Foundation

struct Product: Identifiable, Hashable, Codable {
    
    let id: UUID
    let name: String
    let description: String
    let image: String
    let price: Float

}

struct ProductCategory: Identifiable, Hashable, Codable {
    
    let id: UUID
    let name: String
    let description: String
    let image: String
    let products: [Product]

}
