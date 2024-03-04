//
//  ProductosVistaModelo.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import Foundation

class ProductoViewModel: ObservableObject {
    @Published var catalogo:[Producto] = []
    
    init() {
        self.getProducts()
    }
    
    func getProducts(){
            Task{
                do{
                    self.catalogo = try await NetworkManager.shared.getProducts()
                }catch{
                    
                    if let callError = error as? WEError {
                        switch callError{
                        case .invalidURL:
                            print("Invalid URL")
                        case .invalidResponse:
                            print("Invalid response")
                        case .invalidData:
                            print("Invalid data")
                        case .unableToComplete:
                            print("Unable to complete")
                        }
                        
                    }else{
                        //Generic error
                        print("Invalid response")
                    }
                }
            }
        }
}
