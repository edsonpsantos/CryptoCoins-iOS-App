//
//  HapticManager.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 28/02/2024.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
