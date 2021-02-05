//
//  HeroView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/3/21.
//

import SwiftUI
import Kingfisher

struct HeroItem: View {
    let hero: Hero

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color("red3"))
            VStack {
                KFImage(URL(string: "https://api.opendota.com\(hero.icon)"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56)
                Text(hero.localized_name)
                    .font(.subheadline)
                    .bold()
                
                    Chip(hero: hero)
            }.padding()
        }
    }
}

struct HeroItem_Previews: PreviewProvider {
    static var previews: some View {
        HeroItem(hero: sampleData[0])
    }
}
