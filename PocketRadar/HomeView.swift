//
//  HomeView.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/2/22.
//

import SwiftUI

struct HomeView: View {
    
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                
                // background color
                Color.gray
                    .opacity(0.05)
                    .ignoresSafeArea()
                
                
                VStack (alignment: .leading, spacing: 30)  {
                             
                    Text("Welcome Brandon")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                    
                    ForEach (HomeMenu.allCases, id: \.self) { item in
                        HomeMenuCard(menuItem: item)
                    }
                    

                    RecentSessions()
                        .padding(.top, 28)
                   
                    
                    
                    Spacer()
                }
                .navigationBarTitle("Home")
                .navigationBarHidden(true)
                .padding()
            }
        }
        
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
