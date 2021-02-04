//
//  HeroListViewModel.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/4/21.
//

import SwiftUI
import Combine

//class HeroListViewModel: ObservableObject {
//    let didChange = PassthroughSubject<HeroesViewModel, Never>()
//    init() {
//        fetchHeroes()
//    }
//    
//    @Published var heroes: [HeroesViewModel] = []
//    
//    private func fetchHeroes() {
//        guard let url = URL(string: "https://api.opendota.com/api/heroStats") else {
//            fatalError("URL is not correct!")
//        }
//        WebService().fetchHeroes(url: url) { heroes in
//            if let heroes = heroes {
//                self.heroes = heroes.map(HeroesViewModel.init)
//            }
//        }
//    }
//    
//}
