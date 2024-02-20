//
//  ContentView.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 20/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background.ignoresSafeArea()
            VStack(spacing: 40.0){
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundColor(Color.theme.secondaryText)
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
