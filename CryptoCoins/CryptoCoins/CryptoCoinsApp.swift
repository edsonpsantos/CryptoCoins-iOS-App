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
    
    @State private var showLaunchView: Bool = true
    
    init(){
        UINavigationBar.appearance()
            .largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        
        UINavigationBar.appearance()
            .titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView{
                    HomeView()
                        .navigationBarHidden(true)
                }
                .environmentObject(vm)
                
                ZStack{
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
        }
    }
}
