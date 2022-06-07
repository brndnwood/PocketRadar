//
//  RecentSessions.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/3/22.
//

import SwiftUI

struct RecentSessions: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Recent Sessions").bold()
            
            VStack (alignment: .leading, spacing: 8) {
                
                Text("June 1, 2022 - 10:30am")
                    .foregroundColor(.gray)
                
                Text("Long Toss Drills")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 20)
                
                HStack {
                    VStack {
                        Text("MAX (MPH)")
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                        Text("93")
                            .font(.system(size: 32, weight: .bold, design: .rounded))
                            .foregroundColor(.red)
                    }
                    .frame(maxWidth: .infinity)
                    
                    VStack {
                        Text("AVG (MPH)")
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                        Text("89.1")
                            .font(.system(size: 32, weight: .bold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity)

                    
                    VStack {
                        Text("COUNT")
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                        Text("32")
                            .font(.system(size: 32, weight: .bold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity)

                }
                .frame(maxWidth:.infinity)

            }
            .frame(maxWidth:.infinity)
            .padding([.bottom, .top], 16)
            .padding([.leading, .trailing], 16)

            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
            )
            
            
        }    }
}

struct RecentSessions_Previews: PreviewProvider {
    static var previews: some View {
        RecentSessions()
    }
}
