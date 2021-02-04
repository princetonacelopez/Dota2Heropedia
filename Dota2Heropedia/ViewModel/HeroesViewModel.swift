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

    func fetchHeroes() {
        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
            .map { $0.data }
            .decode(type: [Hero].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \HeroesViewModel.heroes, on: self)
    }
}
