//
//  PlayersVM.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/3/22.
//

import Foundation


@MainActor class PlayersVM : ObservableObject {
    
    // private set - restricts writing to players to this class
    @Published private (set) var players : [PlayerModel] = []
    
    
    init () {
        load()
    }
    
    
    private func load() {
        
        var sessions1 = [
            SessionModel(playerID: 1, date: Date.now,     sessionType: .batting, title: "Batting practice"),
            SessionModel(playerID: 1, date: Date.now - 1, sessionType: .fielding, title: "Fielding drills"),
            SessionModel(playerID: 1, date: Date.now - 2, sessionType: .fielding, title: "Long toss"),
            SessionModel(playerID: 1, date: Date.now - 3, sessionType: .pitching, title: "Throwing from stretch"),
            SessionModel(playerID: 1, date: Date.now - 4, sessionType: .batting, title: "Batting practice"),
            SessionModel(playerID: 1, date: Date.now - 5, sessionType: .batting, title: "Batting practice")
        ]
        
        var sessions2 = [
            SessionModel(playerID: 2, date: Date.now, sessionType: .batting, title: "Batting practice"),
            SessionModel(playerID: 2, date: Date.now - 1, sessionType: .fielding, title: "Fielding drills")
        ]
        
        
        players = [
            PlayerModel(id: 1, firstName: "Bobby", lastName: "Jones",   suffix: nil, primaryPosition: .catcher, sessions: sessions1),
            PlayerModel(id: 2, firstName: "Frank", lastName: "Thomas",  suffix: nil, primaryPosition: .firstBase, sessions: sessions2),
            PlayerModel(id: 3, firstName: "Ken",   lastName: "Griffey", suffix: "Jr.", primaryPosition: .centerField, sessions: [])
        ]
        
        // sort by last name
        players.sort()
    }
    
}

