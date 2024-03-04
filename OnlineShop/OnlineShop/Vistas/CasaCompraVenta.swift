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
                            // You can replace this with actual data or a loop based on your data source
                            FilaProducto()
                                .listRowInsets(EdgeInsets())
                        }
                    }
                    .navigationTitle("Product List")
                }
    }
}


#Preview {
    CasaCompraVenta()
}
