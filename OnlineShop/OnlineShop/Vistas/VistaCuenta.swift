//
//  OtraTestView.swift
//  OnlineShop
//
//  Created by  on 1/3/24.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    
}

struct VistaCuenta: View {
    @AppStorage("nombre") var nombre: String = ""
    @AppStorage("apellido") var apellido: String = ""
    @AppStorage("email") var email: String = ""
    @AppStorage("fNacimiento") var storedFNacimiento = Date().timeIntervalSinceReferenceDate // Storing as TimeInterval
    
    @AppStorage("vip") var esVIP: Bool = false
    @AppStorage("recibeOferta") var recibeOfertas: Bool = false
    @State var cuentaVistaModelo: CuentaVistaModelo
    
    @State private var fNacimiento = Date() // Using State for binding
    
    var body: some View {
        VStack{
            NavigationView {
                Form {
                    Section("Información personal") {
                        TextField("Nombre", text: $nombre).disableAutocorrection(true)
                        TextField("Apellido", text: $apellido).disableAutocorrection(true)
                        TextField("Email", text: $email).disableAutocorrection(true)
                        DatePicker("Fecha de nacimiento", selection: $fNacimiento, displayedComponents: .date)
                    }
                    Section("Configuración") {
                        Toggle("Cliente VIP", isOn: $esVIP)
                        Toggle("Desea recibir ofertas", isOn: $recibeOfertas)

                    }
                    Button("Guardar cambios", action: {
                        cuentaVistaModelo = CuentaVistaModelo(nombre: nombre, apellido: apellido,email: email, fNacimiento: fNacimiento, esVIP: esVIP, recibeOfertas: recibeOfertas)
                    })
                
                }
                .navigationTitle("Cuenta de usuario")
            }
        }
    }
}





#Preview {
    VistaCuenta(nombre: "",
           apellido: "",
           email: "",
           //fNacimiento: Date.now,
           esVIP: false,
           recibeOfertas: false,
            cuentaVistaModelo: CuentaVistaModelo())
}

