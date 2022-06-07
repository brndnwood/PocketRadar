//
//  ManagePlayers.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/3/22.
//

import SwiftUI

struct ManagePlayers: View {
    
    @StateObject var playersVM = PlayersVM()
    
    var body: some View {
        ZStack {
            
            VStack {

                List(playersVM.players) { player in
                    
                    NavigationLink(destination: PlayerDetail(player: player)) {
                        PlayerRow(player: player)
                    }
                    
                }
                
                
            }
            
        }
        .navigationTitle("Manage Players")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct PlayerRow : View {
    
    let player : PlayerModel
    
    var body: some View {
        
        HStack {
            Text(player.fullNameLastFirst)
            Spacer()
            Text(player.primaryPosition.rawValue)
                .foregroundColor(.gray)
        }
    }
}

struct ManagePlayers_Previews: PreviewProvider {
    static var previews: some View {
        ManagePlayers()
    }
}
