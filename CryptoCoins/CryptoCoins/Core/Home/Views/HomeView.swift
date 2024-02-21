//
//  HomeView.swift
//  CryptoCoins
//
//  Created by EDSON SANTOS on 20/02/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio = false
    
    var body: some View {
        ZStack{
            Color.theme.background.ignoresSafeArea()
            
            VStack{
                homeHeader
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    NavigationView{
        Group{
            HomeView()
                .navigationBarHidden(true)
            
            HomeView()
                .navigationBarHidden(true)
                .colorScheme(.dark)
        }
  
    }
}


extension HomeView{
    private var homeHeader: some View{
        HStack{
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none)
                .background(
                    CircleButtonAnimationView(animate: $showPortfolio)
                )
            
            Spacer()
            
            Text(showPortfolio ? "Portfolio" : "Live Prices" )
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            
            Spacer()
            
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
