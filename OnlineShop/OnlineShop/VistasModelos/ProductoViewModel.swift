//
//  ProductoViewModel.swift
//  OnlineShop
//
//  Created by  on 25/3/24.
//

import Foundation
class ProductoViewModel:  ObservableObject {
    @Published var productos = [Producto]()
    
    private var db = Firestore.firestore()
    
    func all() {
        
    }
    
    func add(nombre: String){
        
    }
}
