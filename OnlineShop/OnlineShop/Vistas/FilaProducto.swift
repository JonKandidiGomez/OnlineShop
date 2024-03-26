//
//  RowList.swift
//  OnlineShop
//
//  Created by  on 4/3/24.
//


import SwiftUI

struct FilaProducto: View {
    @State var enseniarPopUp: Bool = false
    
    var producto: Producto
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: producto.image)) { image in
                image.resizable().scaledToFit()
            } placeholder: {
            }.padding(.all, 20)
            VStack{
                HStack{
                    Text(producto.title)
                    Spacer()
                }
                
                HStack{
                    Text("$" + String(producto.price)).foregroundStyle(.gray)
                    Spacer()
                }
            }
        }
        .frame(height: 120)
        .onTapGesture {
            enseniarPopUp.toggle()
        }
        .sheet(isPresented: $enseniarPopUp) {
            // Pop-up content view
            VistaCompra(producto: producto)
        }
    }
}
/*
 struct FilaProducto: View {
     @State var showPopUp: Bool = false // State variable to track pop-up visibility
     var producto: Producto
     
     var body: some View {
         ZStack {
             HStack {
                 AsyncImage(url: URL(string: producto.image)) { phase in
                     switch phase {
                     case .success(let image):
                         image
                             .resizable()
                             .scaledToFit()
                     case .failure(_):
                         Image(systemName: "photo")
                             .resizable()
                             .scaledToFit()
                     case .empty:
                         Image(systemName: "photo")
                             .resizable()
                             .scaledToFit()
                     @unknown default:
                         EmptyView()
                     }
                 }
                 .padding(.all, 20)
                 
                 VStack(alignment: .leading) {
                     Text(producto.title)
                     Text("$" + String(producto.price))
                         .foregroundStyle(.gray)
                 }
                 .padding(.trailing)
                 Spacer()
             }
             .frame(height: 120)
             .onTapGesture {
                 showPopUp.toggle() // Toggle the state variable to show/hide pop-up
             }
             
             // Show pop-up if state variable is true
             if showPopUp {
                 PopUpView(producto: producto, showPopUp: $showPopUp)
                     .zIndex(1) // Ensure pop-up is displayed above other content
             }
         }
     }
 }

 struct PopUpView: View {
     var producto: Producto
     @Binding var showPopUp: Bool // Binding to control pop-up visibility
     
     var body: some View {
         GeometryReader { geometry in
             ZStack {
                 Color.black.opacity(0.4)
                     .edgesIgnoringSafeArea(.all)
                 
                 VStack {
                     Spacer()
                     
                     VStack {
                         Text("Pop Up Content")
                             .font(.title)
                             .padding()
                         
                         // Your pop-up content here
                         Text("Title: \(producto.title)")
                         Text("Price: $\(producto.price)")
                         
                         Button(action: {
                             showPopUp.toggle() // Close pop-up
                         }) {
                             Image(systemName: "xmark.circle.fill")
                                 .resizable()
                                 .aspectRatio(contentMode: .fit)
                                 .frame(width: 32, height: 32)
                                 .foregroundColor(.white)
                                 .padding()
                         }
                     }
                     .background(Color.white)
                     .cornerRadius(20)
                     .padding()
                     .frame(width: geometry.size.width * 0.8) // Set width to 80% of screen width
                 }
                 .frame(width: geometry.size.width, height: geometry.size.height) // Match frame size with screen size
             }
             .onTapGesture {
                 // Close pop-up when tapped outside of the pop-up content
                 showPopUp.toggle()
             }
         }
     }
 }
 */
