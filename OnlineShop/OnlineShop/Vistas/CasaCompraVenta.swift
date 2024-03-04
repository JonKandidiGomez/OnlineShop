//
//  TestView.swift
//  OnlineShop
//
//  Created by  on 1/3/24.
//

import Foundation
import SwiftUI

struct CasaCompraVenta: View {
    
    var body: some View {
        NavigationView {
                    List {
                        ForEach(0..<5) { _ in
                            FilaProducto().onTapGesture {
                                print("Hola Mundo")
                            }
                        }
                    }
                    .navigationTitle("Lista de productos")
                }
    }
}


#Preview {
    CasaCompraVenta()
}
