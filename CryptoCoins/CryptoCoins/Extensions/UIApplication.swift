//
//  UIApplication.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 23/02/2024.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    // To Dissmising the keyboard
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder),
                   to: nil,
                   from: nil,
                   for: nil)
    }
}
