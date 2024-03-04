//
//  Producto.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import Foundation
import SwiftUI



struct Producto: Decodable, Hashable, Identifiable {
    let id = UUID()
    var title: String
    var price: Double
    var image: String
    
}
