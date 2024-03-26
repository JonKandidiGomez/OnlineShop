//
//  CuentaVistaModelo.swift
//  OnlineShop
//
//  Created by  on 11/3/24.
//

import Foundation

class CuentaVistaModelo {
    
    var cuentaDeUsuario: CuentaUsuario
    
    init(nombre: String, apellido: String, email: String, fNacimiento: Date, esVIP: Bool, recibeOfertas: Bool) {
            self.cuentaDeUsuario = CuentaUsuario(nombre: nombre, apellido: apellido, email: email, fNacimiento: fNacimiento, esVIP: esVIP, recibeOfertas: recibeOfertas)
            print("LLegue a l constructor")
            UserDefaults.standard.set(nombre, forKey: "informacion")
        }
        
    init() {
        self.cuentaDeUsuario = CuentaUsuario(nombre: "", apellido: "", email: "", fNacimiento: Date(), esVIP: false, recibeOfertas: false)
    }
    
    func leerArchivo() -> CuentaUsuario? {
        if let savedData = UserDefaults.standard.data(forKey: "cuentaUsuario") {
            let decoder = JSONDecoder()
            if let loadedCuenta = try? decoder.decode(CuentaUsuario.self, from: savedData) {
                return loadedCuenta
            }
        }
        return nil
    }
    
    func guardarDatosLocalmente() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(cuentaDeUsuario) {
            UserDefaults.standard.set(encoded, forKey: "cuentaUsuario")
        }
    }
}

