//
//  MarketDataService.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 23/02/2024.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    var marketDataSubscription: AnyCancellable?
    
    init(){
        getGlobalData()
    }
       
    func getGlobalData(){
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (retunedGlobalData) in
                self?.marketData = retunedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
    
}
