//
//  PlayerModel.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/2/22.
//

import Foundation

struct PlayerModel : Identifiable, Comparable, Equatable {
    static func == (lhs: PlayerModel, rhs: PlayerModel) -> Bool {
        lhs.id == rhs.id
    }
    
    
    enum Position: String {
      case firstBase = "1B"
      case secondBase = "2B"
      case shortStop = "SS"
      case thirdBase = "3B"
      case catcher = "C"
      case pitcher = "P"
      case leftField = "LF"
      case centerField = "CF"
      case rightField = "RF"
      case dh = "DH"
    }
    
    let id        : Int
    let firstName : String
    let lastName  : String
    let suffix    : String?
    let primaryPosition : Position
    
    let sessions : [SessionModel]
    
    var fullName : String {
        return firstName + " " + lastName + (suffix != nil ? " " + suffix! : "")
    }
    
    var fullNameLastFirst : String {
        return lastName + (suffix != nil ? " " + suffix! : "") + ", " + firstName
    }
    
    
    // allows for sorting by last name using sort function
    static func <(lhs: PlayerModel, rhs: PlayerModel) -> Bool {
        lhs.lastName < rhs.lastName
    }
}
