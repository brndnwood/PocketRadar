//
//  HomeCardEnum.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/2/22.
//

import Foundation
import SwiftUI

enum HomeMenu : CaseIterable {
    
    case newSession
    case managePlayers
    case settings
    
    
    var title : String {
        switch self {
            
        case .newSession:
            return "Add New Session"
        case .managePlayers:
            return "Manage Players"
        case .settings:
            return "Settings"
        }
    }
    
    
    var icon : String {
        switch self {
            
        case .newSession:
            return "plus.app.fill"
        case .managePlayers:
            return "person.2"
        case .settings:
            return "slider.horizontal.3"
        }
    }
    
    var details : String? {
        switch self {
            
        case .newSession:
            return "Capture speed data to help track and achieve your goals."
        case .managePlayers:
            return nil
        case .settings:
            return nil
        }
    }
    
    var border : Bool {
        switch self {
            
        case .newSession:
            return true
        case .managePlayers:
            return false
        case .settings:
            return false
        }
    }
    

    
    var destination : some View {
        
        switch self {
            
        case .newSession:
            return AnyView(NewSession())
        case .managePlayers:
            return AnyView(ManagePlayers())
        case .settings:
            return AnyView(Settings())
        }
        
    }
    
    
    
}
