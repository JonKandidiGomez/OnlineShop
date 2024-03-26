//
//  ProductoViewModel.swift
//  OnlineShop
//
//  Created by  on 25/3/24.
//

import Foundation
import Firebase
import FirebaseFirestore

class ProductoConexion:  ObservableObject {
    @Published var productos = [Producto]()
    
    private var db = Firestore.firestore()
    
    init() {
        all()
    }
    
    func all() {
        db.collection("productos").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("ERROR: No hay documentos")
                return
            }

            self.productos = documents.map { (queryDocumentSnapshot) -> Producto in
                let data = queryDocumentSnapshot.data()
                let title = data["title"] as? String ?? "Nada"
                let price = data["price"] as? Double ?? 0.00
                let image = data["image"] as? String ?? "Nada"
                                
                return Producto(title: title, price: price, image: image, rating: Rango(rate: 0.00))
            
            }
        }
    }
    
    func add(title: String, price: Double, image: String){
        db.collection("productos").addDocument(data: ["title": title, "price": price, "image": image])
    }
}
