//
//  Date.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 05/03/2024.
//

import Foundation

extension Date {

    init(coinGeckoDateString: String){
    
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoDateString) ?? Date ()
        
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String{
        return shortFormatter.string(from: self)
    }
}
