//
//  HeroesViewModel.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/3/21.
//

import SwiftUI
import Combine

class HeroesViewModel: ObservableObject {
    
    private var url = "https://api.opendota.com/api/heroStats"
    private var task: AnyCancellable?

    @Published var heroes: [Hero] = []
    
    @Published var search: String? = nil
    
    @Published var searchHero: String = "" {
        didSet {
            searchHeroes(hero: searchHero)
        }
    }
    //fetching the data from the api
    func fetchHeroes() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [Hero].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \HeroesViewModel.heroes, on: self)
    }
    //filter list
    var filteredList: [Hero] {
        if let search = search {
            return heroes.filter({ $0.localized_name.contains(search)})
        } else {
            return heroes
        }
    }
    //hero search
    func searchHeroes(hero: String) {
        let heroSearch = hero.trimmingCharacters(in: .whitespaces)
        search = heroSearch == "" ? nil : heroSearch
    }
}
