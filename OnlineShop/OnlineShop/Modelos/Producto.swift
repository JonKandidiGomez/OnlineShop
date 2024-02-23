//
//  Producto.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import Foundation
import SwiftUI

struct Catalogo: Hashable, Codable {
    var productos: [Producto]
}

struct Producto: Hashable, Codable {
    var id: Int
    var title: String
    var price: Double
    var description: String
    var category: String
    var image: String
    var rating: Rating
}

struct Rating: Hashable, Codable {
    var rate: Double
    var count: Int
}

