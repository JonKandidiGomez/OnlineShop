//
//  ContentView.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    var catalogo = ProductoViewModel()
    var body: some View {
        VStack {
            ForEach(catalogo.id) { numeroid in
                Text(numeroid)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
