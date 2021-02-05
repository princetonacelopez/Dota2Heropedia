//
//  FilterHero.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/5/21.
//

import SwiftUI
import Kingfisher
struct FilterHero: View {
    var body: some View {
        HStack(spacing: 20) {
            Label(
                title: { Text("Agility").font(.callout) },
                icon: {
                    Image("agi")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                }
            )
            Label(
                title: { Text("Intelligence").font(.callout) },
                icon: { Image("int")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                }
            )
            Label(
                title: { Text("Strength").font(.callout) },
                icon: { Image("str")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                }
            )
        }
        .padding(8)
        .frame(maxWidth: .infinity)
    }
}

struct FilterHero_Previews: PreviewProvider {
    static var previews: some View {
        FilterHero()
    }
}
