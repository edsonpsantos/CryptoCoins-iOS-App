//
//  SearchBarView.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 23/02/2024.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ?                   Color.theme.secondaryText :
                        Color.theme.accent
                )
            
            
            TextField("Search by name or symbol...", text: $searchText )
                .foregroundColor(Color.theme.accent)
                .disableAutocorrection(true)
                .overlay (
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10)
                        .foregroundColor(Color.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.20), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0,y:0)
        )
        .padding()
    }
}

struct SearchBarView_Previres: PreviewProvider {
    static var previews: some View {
        Group{
            SearchBarView(searchText: .constant(""))

            
            SearchBarView(searchText: .constant(""))
                .preferredColorScheme(.dark)
                .previewDisplayName("Dark Mode")
        }                .previewLayout(.sizeThatFits)

    }
}
