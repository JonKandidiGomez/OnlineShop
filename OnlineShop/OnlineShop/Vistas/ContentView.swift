//
//  ContentView.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var catalogo: ProductoViewModel = ProductoViewModel()
    var body: some View {
        VStack {
            Text("\(catalogo.catalogo.productos[0].id)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
