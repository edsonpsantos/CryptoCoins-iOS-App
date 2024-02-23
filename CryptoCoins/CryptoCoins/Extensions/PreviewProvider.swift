//
//  PreviewProvider.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 21/02/2024.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    
    //To sure the initilizer is only in the class
    private init() { }
    
    let homeVM = HomeViewModel()
    
    let statistic = StatisticModel(title: "Market Cap", value: "$5,4Bn", percentageChange: 32.15 )
    let statistic2 = StatisticModel(title: "Total Value", value: "$2.35Tr")
    let statistic3 = StatisticModel(title: "Portfolio Value", value: "$15,4Bn", percentageChange: -32.15 )
    
    let coin = CoinModel(id: "bitcoin",
                         symbol: "btc",
                         name: "Bitcoin",
                         image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
                         currentPrice: 52301,
                         marketCap: 1026424315286,
                         marketCapRank: 1,
                         fullyDilutedValuation: 1097878593377,
                         totalVolume: 34337685332,
                         high24H: 52902,
                         low24H: 50953,
                         priceChange24H: 516.78,
                         priceChangePercentage24H: 0.99796,
                         marketCapChange24H: 10277872514,
                         marketCapChangePercentage24H: 1.01146,
                         circulatingSupply: 19633237.0,
                         totalSupply: 21000000.0,
                         maxSupply: 21000000.0,
                         ath: 69045,
                         athChangePercentage: -24.28267,
                         athDate: "2021-11-10T14:24:11.849Z",
                         atl: 67.81,
                         atlChangePercentage: 76997.22381,
                         atlDate: "2013-07-06T00:00:00.000Z",
                         lastUpdated: "2024-02-20T23:57:23.347Z",
                         sparklineIn7D: SparklineIn7D(price: [
                            49551.58562313264,
                            49651.11381838452,
                            49864.75251161678,
                            50716.752309632175,
                            51595.21828047251,
                            51270.218606244176,
                            51612.4274650325,
                            51675.138516228624,
                            51807.95869179433,
                            51936.91987518375,
                            51594.680394536095,
                            51594.53762038165,
                            51678.493035947715,
                            51471.298795037736,
                            51708.3855649282,
                            51743.81294850718,
                            51825.629819931884,
                            51834.85048162561,
                            51821.253801577375,
                            52414.81278254912,
                            51960.70596641674,
                            52122.82511598238,
                            52375.183479772124,
                            52175.52669349707,
                            51978.31433768969,
                            52021.29883192179,
                            51815.07593467755,
                            51956.79423444182,
                            52211.37654037585,
                            52368.99918912457,
                            52376.484107354816,
                            52345.94277070577,
                            52276.30502983934,
                            52660.8347489114,
                            52027.17623368052,
                            52296.67949905098,
                            52022.75099027247,
                            51977.66264845488,
                            52070.39177141852,
                            51818.05929249659,
                            51595.20350556687,
                            51720.02952143732,
                            51941.428809915866,
                            52005.41621994339,
                            51997.81218973864,
                            52216.47773298768,
                            52310.24379227993,
                            52162.69334303953,
                            52077.172766748845,
                            51893.3153743087,
                            51738.28354529973,
                            51851.335864228124,
                            51920.53031358234,
                            52274.57178400924,
                            52235.54311335937,
                            52356.79782686047,
                            52314.97483634101,
                            51894.78294379994,
                            51774.07007717442,
                            52086.16847890425,
                            52023.75736709356,
                            51981.15365684245,
                            51755.498822503636,
                            51847.44409875501,
                            52018.700560717145,
                            52001.823781645275,
                            52166.43430976192,
                            52069.32226376921,
                            51994.44349142759,
                            51982.838807823,
                            51988.31772128554,
                            52030.95310373292,
                            51930.26239181351,
                            51961.228950304874,
                            51953.218478884475,
                            51763.89168633607,
                            51712.70687089898,
                            51702.03244051163,
                            51718.567977267965,
                            51707.67502069741,
                            51186.65730717823,
                            50906.19949617572,
                            51016.78431464977,
                            50970.709346809796,
                            51237.63556091826,
                            51277.792088834794,
                            51410.22455889138,
                            51546.64366149475,
                            51827.34887067742,
                            51696.42038165249,
                            51657.37972422054,
                            51693.62782497591,
                            51516.73010122554,
                            51242.28711166119,
                            51486.52057537105,
                            51583.1944656672,
                            51674.26071474133,
                            51518.35155219963,
                            51652.07771713862,
                            51800.75478645572,
                            51970.27441047415,
                            51833.77432169458,
                            51836.17953262533,
                            51559.378688053344,
                            51644.32973723303,
                            51938.83382527146,
                            51776.14556250021,
                            51845.92086716553,
                            51854.36269890417,
                            51812.41148717034,
                            51772.363056453134,
                            51789.22612687278,
                            51856.11596924083,
                            52179.95663917086,
                            52117.12472983652,
                            52199.82189377578,
                            52070.32700301454,
                            52142.91679915746,
                            52080.840329557235,
                            52088.173697885664,
                            52184.34098661096,
                            52378.36823550363,
                            52413.24810236975,
                            52086.71799237302,
                            52270.98007738835,
                            52359.36431218185,
                            52348.302858899224,
                            52309.51704495688,
                            52178.294078113984,
                            52107.70628993013,
                            52117.83109981408,
                            51777.19691008283,
                            52087.553518969326,
                            51947.866357559054,
                            51844.09458689095,
                            51789.41490519265,
                            51906.250667508604,
                            51967.41325220109,
                            51783.882324492006,
                            51651.718853830855,
                            51661.79092647534,
                            51764.4135924605,
                            51583.62431716513,
                            51783.28337977889,
                            51882.15757428817,
                            51935.6936354653,
                            51822.731222097565,
                            51783.692723358196,
                            51815.44531135612,
                            52097.338940997026,
                            52310.61657763841,
                            52173.57552261771,
                            52814.46032658752,
                            52013.92583628446,
                            51706.22247516815,
                            51412.204799432315,
                            51281.19277020358,
                            51505.40545199894,
                            52088.2235020913,
                            52075.96588399868,
                            52080.27842993199,
                            52286.72821905567,
                            52286.79372554667,
                            52184.205270030514,
                            52092.500929603,
                            52063.254143215534,
                            51997.46017574118,
                            51945.313901315254]),
                         priceChangePercentage24HInCurrency: 0.9979633764356075,
                         currentHoldings: 1.5
    )
    
}
