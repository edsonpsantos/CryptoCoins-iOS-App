//
//  SettingView.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 05/03/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.colorScheme) var colorScheme
    
    let defaultUrl = URL(string: "https://www.google.com")!
    let youtubeUrl = URL(string: "https://www.youtube.com/@markets/streams")
    let mediumUrl = URL(string: "https://medium.com/@epdsant")
    let coinGeckoUrl = URL(string: "https://www.coingeck.com")
    let githubUrl = URL(string: "https://github.com/edsonpsantos")
    
    
    var body: some View {
        NavigationView{
            List{
                financeMarketSection
                coinGeckSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


extension SettingsView {
    
    private var financeMarketSection: some View{
        Section(header: Text("Finance Market")) {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made developed by Edson Santos. It uses SwiftUI and is written 100% Swift. The project benefits from multi-threading, publishers/subscribers, MVVM Architecture, Combine, CoreData and FileManager")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Learn more about Finance Market", destination: youtubeUrl!)
            
        }
    }
    
    private var coinGeckSection: some View{
        Section(header: Text("Edson Santos")) {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame( height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used is this app comes from a free API from CoinGecko! Prices may be slightly delayed")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko website 🦎 ", destination: coinGeckoUrl!)
            
        }
    }
    
    private var developerSection: some View{
        Section(header: Text("Developer")) {
            VStack(alignment: .leading){
                Image(colorScheme == .dark ? "githubDark" :  "githubLight")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This is app was developed by Edson Santos. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, data persistant to saving current user's portfolio and publisher | subscribers.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Vist my GitHub repositories📱", destination: githubUrl!)
            Link("Explore my stories on Medium 👨🏽‍💻", destination: mediumUrl!)
        }
    }
    
    private var applicationSection: some View{
        Section(header: Text("Application")) {

            Link("Terms of Service", destination: defaultUrl)
            Link("Privacy Policy", destination: defaultUrl)
            Link("Terms of Service", destination: defaultUrl)
            Link("Company Website", destination: defaultUrl)
            Link("Learn More", destination: defaultUrl)
  
        }
    }
}
