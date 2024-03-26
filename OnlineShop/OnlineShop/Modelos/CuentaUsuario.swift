//
//  CuentaUsuario.swift
//  OnlineShop
//
//  Created by  on 11/3/24.
//

import Foundation

class CuentaUsuario: Codable {
    
    var nombre: String
    var apellido: String
    var email: String
    var fNacimiento: Date
    var esVIP: Bool
    var recibeOfertas: Bool
    
    init(nombre: String, apellido: String, email: String, fNacimiento: Date, esVIP: Bool, recibeOfertas: Bool) {
        self.nombre = nombre
        self.apellido = apellido
        self.email = email
        self.fNacimiento = fNacimiento
        self.esVIP = esVIP
        self.recibeOfertas = recibeOfertas
    }
    
    func devolverNombre() -> String {
        return self.nombre
    }
}
