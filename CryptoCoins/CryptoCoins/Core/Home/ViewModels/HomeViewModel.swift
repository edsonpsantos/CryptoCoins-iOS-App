//
//  HomeViewModel.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 21/02/2024.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var statistics: [StatisticModel] = [
        StatisticModel(title: "Title", value: "$Value", percentageChange: 1),
        StatisticModel(title: "Title", value: "$Value"),
        StatisticModel(title: "Title", value: "$Value", percentageChange: 2),
        StatisticModel(title: "Title", value: "$Value", percentageChange: -5),
    ]
    
    @Published var allCoins:[CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers(){
        
        // Updates allCoins
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.6), scheduler: DispatchQueue.main)
            .map(filterdCoins)
            .sink {[weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
    private func filterdCoins(text: String, coins: [CoinModel]) -> [CoinModel]{
        guard !text.isEmpty else {
            return coins
        }
        
        // Bitcon to bitcoin
        let lowerCasedText = text.lowercased()
        
        return coins.filter { (coin) in
            return coin.name.lowercased().contains(lowerCasedText) ||
            coin.symbol.lowercased().contains(lowerCasedText) ||
            coin.id.lowercased().contains(lowerCasedText)
        }
    }
}
