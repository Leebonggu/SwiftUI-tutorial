//
//  StatText.swift
//  NBA Player FUN
//
//  Created by Bonggu Lee on 2021/04/26.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":")
                .font(.system(size: 45))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading, 30)
            Text(statValue)
                .font(.system(size: 45))
                .fontWeight(.light)
                .padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "32")
    }
}
