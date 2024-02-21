//
//  CryptoCoinsApp.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 20/02/2024.
//

import SwiftUI

@main
struct CryptoCoinsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
