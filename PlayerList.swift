//
//  PlayerList.swift
//  NBA Player FUN
//
//  Created by Bonggu Lee on 2021/04/27.
//

import SwiftUI

struct PlayerList: View {
    
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                    PlayerRow(player: currentPlayer)
                        .frame(height: 70)
                }
            }
            .navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
