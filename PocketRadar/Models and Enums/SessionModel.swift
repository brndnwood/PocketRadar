//
//  SessionModel.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/5/22.
//

import Foundation

struct SessionModel : Hashable {
    
    enum SessionType : String {
        case batting
        case pitching
        case fielding
    }
    
    let playerID : Int
    let date : Date
    let sessionType : SessionType
    let title : String
    
    
    var dateAsString : String {


        // Create Date Formatter
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "MM/dd/YY"


        // Convert Date to String
        return dateFormatter.string(from: self.date)
        
    }
}
