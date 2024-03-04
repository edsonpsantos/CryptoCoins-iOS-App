//
//  DetailView.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 01/03/2024.
//

import SwiftUI

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack{
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
}

struct DetailView: View {
    
    @StateObject var vm: DetailViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        print("Initializing Detail View for \(coin.name)")
    }
    
    var body: some View {
        Text("Hi, I'm here")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View{
        DetailView(coin: dev.coin)
    }
}
