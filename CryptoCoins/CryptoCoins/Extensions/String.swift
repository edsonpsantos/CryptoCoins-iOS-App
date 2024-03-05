//
//  String.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 05/03/2024.
//

import Foundation


extension String {
    
    var replaceHTMLOccurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>",
                                         with: "",
                                         options: .regularExpression,
                                         range: nil)
    }
}
