//
//  PlayerDetail.swift
//  PocketRadar
//
//  Created by Brandon Wood on 6/3/22.
//

import SwiftUI

struct PlayerDetail: View {
    
    let player : PlayerModel
    
    
    var playerNameHeader : some View {
        HStack (alignment: .firstTextBaseline) {
            Text(player.fullName)
                .font(.system(size: 28, weight: .bold, design: .rounded))
            
            Spacer()
            
            Text(player.primaryPosition.rawValue)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white)
    }
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.gray
                    .opacity(0.05)
                    .ignoresSafeArea()
                
                VStack (alignment: .leading){
                    
                    playerNameHeader
                    

                    
                    VStack (alignment: .leading) {
                        
                        VStack (alignment: .leading) {
                            Text("Bio Data").bold().font(.subheadline)
                            
                            GroupBox {
                                HStack (alignment: .top) {
                                    BioStatCard(title: "HT/WT", detail: "6' 2\", 190lbs")
                                    BioStatCard(title: "DOB", detail: "12/10/1998")
                                    BioStatCard(title: "BAT/THR", detail: "Switch/Right")
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            .groupBoxStyle(WhiteGroupBox())
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
                                
                            )
                        }
                        .padding(.bottom, 28)
                        
                        
                        
                        VStack (alignment: .leading) {
                            Text("Session Stats").bold().font(.subheadline)
                            
                            GroupBox {
                                HStack (alignment: .top) {
                                    BioStatCard(title: "Sessions", detail: "85")
                                    BioStatCard(title: "Last", detail: "5/31/2022")
                                    BioStatCard(title: "BP", detail: "301\npitches")
                                    BioStatCard(title: "Field", detail: "215\ntouches")
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            .groupBoxStyle(WhiteGroupBox())
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
                                
                            )

                        }
                        .padding(.bottom, 28)

                        
                        
                        
                        VStack (alignment: .leading) {
                            Text("Session History").bold().font(.subheadline)
                            
                            GroupBox {
                                ScrollView {
                                    ForEach(player.sessions, id: \.self) { session in
                                        
                                        VStack {
                                            HStack (alignment: .center) {
                                                Text(session.title)
                                                    .font(.system(size: 14, weight: .regular, design: .default))
                                                Spacer()
                                                Text(session.dateAsString)
                                                    .font(.system(size: 12, weight: .regular, design: .default))
                                                    .foregroundColor(.gray)
                                            }
                                            .frame(maxWidth: .infinity)
                                            
                                            Divider()
                                        }
                                    }
                                }
                            }
                            .groupBoxStyle(WhiteGroupBox())
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
                                
                            )

                        }
                        .padding(.bottom, 28)

                        
                        
                        
                        
                    }
                    .padding()
                    
                    
                    Spacer()
                }
            
            }
            .navigationTitle("Player Detail")
            .navigationBarHidden(true)

            
        }


        
    }
}

struct BioStatCard : View {
    
    let title : String
    let detail : String
    
    var body : some View {
    
        VStack (alignment: .center, spacing: 4){
            Text(title).font(.footnote).foregroundColor(.gray)
            Text(detail).font(.footnote).multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
    }
}


struct WhiteGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.white))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}


struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player:
                        PlayerModel(id: 1, firstName: "Frank", lastName: "Thomas", suffix: "Sr.", primaryPosition: .firstBase,
                                    sessions:  [
                                        SessionModel(playerID: 1, date: Date.now, sessionType: .batting, title: "Batting practice"),
                                        SessionModel(playerID: 1, date: Date.now - 1, sessionType: .fielding, title: "Fielding drills")
                                    ]))
    }
}
