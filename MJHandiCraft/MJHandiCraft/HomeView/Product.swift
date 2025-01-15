//
//  Product.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 09/01/25.
//

import Foundation

struct Product: Identifiable, Hashable {
    
    let id: UUID
    let name: String
    let discription: String
    let image: String
    let price: Float

}

struct ProductCtagory: Identifiable, Hashable {
    
    let id: UUID
    let name: String
    let discription: String
    let image: String

}
