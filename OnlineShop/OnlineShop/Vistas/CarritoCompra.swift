

import SwiftUI

struct CarritoCompra: View {
    @ObservedObject var productoConexion = ProductoConexion()

    var totalPrice: Double {
        productoConexion.productos.reduce(0) { $0 + $1.price }
    }

    var body: some View {
        VStack {
            if productoConexion.productos.isEmpty {
                Text("Cargando...")
            } else {
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(productoConexion.productos, id: \.id) { producto in
                            HStack {
                                AsyncImage(url: URL(string: producto.image)) { image in
                                    image.resizable().scaledToFit()
                                } placeholder: {
                                }
                                .padding(.all, 20)

                                VStack(alignment: .leading, spacing: 5) {
                                    Text(producto.title)
                                    Text("$\(String(format: "%.2f", producto.price))")
                                        .foregroundStyle(.gray)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .frame(height: 120)
                        }
                    }
                    .padding()
                }
            }

            Button(action: {
            }) {
                Text("Precio total: $\(String(format: "%.2f", totalPrice))")
                    .padding()
                    .foregroundColor(.white)
                    .background(.purple)
                    .cornerRadius(10)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            .padding()
            .disabled(productoConexion.productos.isEmpty)
        }
    }
}


#Preview {
    CarritoCompra()
}

