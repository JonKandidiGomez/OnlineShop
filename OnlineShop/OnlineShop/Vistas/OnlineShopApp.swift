//
//  OnlineShopApp.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import SwiftUI
import Firebase

@main
struct OnlineShopApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Hola ya inicie")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
