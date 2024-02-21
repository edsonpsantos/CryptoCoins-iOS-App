//
//  CryptoCoinsApp.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 20/02/2024.
//

import SwiftUI

@main
struct CryptoCoinsApp: App {
    
    //Sharing my viewModel for all my application
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
