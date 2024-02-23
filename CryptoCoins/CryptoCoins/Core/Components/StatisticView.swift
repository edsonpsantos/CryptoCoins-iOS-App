//
//  StatisticView.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 23/02/2024.
//

import SwiftUI

struct StatisticView: View {
    
    let statistic: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            Text(statistic.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            
            Text(statistic.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            
            HStack(spacing: 3) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(degrees:
                                (statistic.percentageChange ?? 0) >= 0 ? 0: 180))
                
                Text(statistic.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((statistic.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(statistic.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            StatisticView(statistic: dev.statistic)
                .previewLayout(.sizeThatFits)
              
            Spacer()
            StatisticView(statistic: dev.statistic2)
                .previewLayout(.sizeThatFits)
                
            Spacer()
            StatisticView(statistic: dev.statistic3)                .previewLayout(.sizeThatFits)
            Spacer()
            
        }  .preferredColorScheme(.dark)
    }
}
