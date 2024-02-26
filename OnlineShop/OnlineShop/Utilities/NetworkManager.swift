//
//  NetworkManager.swift
//  OnlineShop
//
//  Created by  on 26/2/24.
//

import Foundation

class NetworkManager {

    static let shared = NetworkManager()
    
    private let baseUrl = "https://fakestoreapi.com/products"
    
    func getProducts() async throws -> Producto{
        guard let completeUrl =  URL(string: baseUrl) else {
            throw WEError.invalidURL
        }
        
        let(data, response) = try await URLSession.shared.data(from: completeUrl)
       
        do{
            let decoder = JSONDecoder()
            return try decoder.decode(Producto.self, from: data)
        }catch{
            throw WEError.invalidData
        }
    }
}
