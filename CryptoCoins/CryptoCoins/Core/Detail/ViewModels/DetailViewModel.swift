//
//  DetailViewModel.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 04/03/2024.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers(){
        
        coinDetailService.$coinDetails
            .sink { (returnesCoinDetails) in
                print("Recieved Coin Detail Data")
                print(returnesCoinDetails)
            }
            .store(in: &cancellables)
        
    }
    
}
