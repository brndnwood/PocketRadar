//
//  HomeCard.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/2/22.
//

import SwiftUI

struct HomeMenuCard: View {
    
//    var title : String = ""
//    var icon  : String = ""
//    var details : String?
    
    let menuItem : HomeMenu
    
    var body: some View {
        
        NavigationLink (destination: menuItem.destination) {
            ZStack {
                
                
                HStack (alignment: .center, spacing: 0) {
                    Image(systemName: menuItem.icon)
                        .font(.system(size: 24).bold())
                        .frame(width: 60)
                        .foregroundColor(.red)
                    VStack (alignment: .leading, spacing: 4) {
                        Text(menuItem.title)
                            .font(.system(size: 20, weight: .bold, design: .rounded))

                        
                        if (menuItem.details != nil) {
                            Text(menuItem.details!)
                                .opacity(0.75)
                        }
                    }
                    Spacer()
                }
                .frame(maxWidth:.infinity)
                .padding([.bottom, .top], 16)
                .border(.black, width: menuItem.border ? 1 : 0)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 2, x: 0, y: 0)
                )
                
                
            }
        }
        .buttonStyle(PlainButtonStyle())  // turn off overlay color

        
        
        
    }
}

struct HomeMenuCard_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView {
            VStack (spacing: 30) {
                HomeMenuCard(menuItem: HomeMenu.newSession)
                    

                HomeMenuCard(menuItem: HomeMenu.managePlayers)

            }
            .padding()
        }
        

    }
}
