//
//  HeroView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/3/21.
//

import SwiftUI
import Kingfisher

struct HeroView: View {
    private let hero: Hero
    let viewModel: HeroesViewModel
    
    init(hero: Hero, viewModel: HeroesViewModel) {
        self.hero = hero
        self.viewModel = viewModel
    }
    
    var body: some View {
        HStack {
            KFImage(URL(string: "https://api.opendota.com\(hero.icon!)"))
            
            VStack(alignment: .leading) {
                Text(hero.localized_name!)
                    .font(.title3)
                    .bold()
                Text(hero.attack_type!)
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.gray)
            }
        }
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: sampleData[0], viewModel: HeroesViewModel())
    }
}
