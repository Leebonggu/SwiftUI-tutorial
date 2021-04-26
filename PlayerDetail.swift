//
//  PlayerDetail.swift
//  NBA Player FUN
//
//  Created by Bonggu Lee on 2021/04/26.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            
            Image(player.imageName)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .offset(x: 0, y: -90)
                .padding(.bottom, -70)
                .shadow(radius: 15)
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
            
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: "\(player.height)")
            StatText(statName: "Weight", statValue: "\(player.weight)lbs")
            Spacer() // 가능한 영역 모두 차지
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[0])
    }
}
