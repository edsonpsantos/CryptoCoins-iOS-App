//
//  CoinImageViewModel.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 23/02/2024.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoagind: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancelaables = Set<AnyCancellable>()

    init(coin: CoinModel){
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoagind = true
    }
    
    private func addSubscribers(){
        dataService.$image
            .sink { [weak self](_) in
                self?.isLoagind = false
        } receiveValue: { [weak self] (returnedImage) in
            self?.image = returnedImage
            }

        .store(in: &cancelaables)
    }
}
