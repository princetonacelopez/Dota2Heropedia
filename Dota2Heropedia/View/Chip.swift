//
//  Chip.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/5/21.
//

import SwiftUI
import Kingfisher
struct Chip: View {
    let hero: Hero
    var body: some View {
        HStack {
            switch hero.primary_attr {
                case "agi":
                    Image("agi")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
            case "int":
                Image("int")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            default:
                Image("str")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            Text(hero.attack_type)
                .font(.caption)
                .italic()
                .foregroundColor(.white)
                .padding(.trailing, 16)
                .padding(.vertical, 8)
                
        }.background(Capsule().fill(Color.white.opacity(0.24)))
    }
}

struct Chip_Previews: PreviewProvider {
    static var previews: some View {
        Chip(hero: sampleData[0])
    }
}
