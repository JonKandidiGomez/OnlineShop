//
//  ProductosVistaModelo.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import Foundation

class ProductoViewModel: ObservableObject {
    @Published var catalogo: Catalogo
    
    init() {
        self.catalogo = load("products.json")
    }
}
