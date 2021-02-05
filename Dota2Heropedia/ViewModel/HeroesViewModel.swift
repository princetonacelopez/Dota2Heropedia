//
//  HeroesViewModel.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/3/21.
//

import SwiftUI
import Combine

final class HeroesViewModel: ObservableObject {
    @Published var heroes = [Hero]()
    
    let remoteDataPublisher = URLSession.shared.dataTaskPublisher(for: URL(string: "https://api.opendota.com/api/heroStats")!)
        .tryMap { (data, response)  in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }
            return data
        }
        .decode(type: [Hero].self, decoder: JSONDecoder())
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        fetchHeroes()
    }
    
    func fetchHeroes() {
        remoteDataPublisher
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }, receiveValue: { heroes in
                self.heroes = heroes
            })
            .store(in: &cancellables)
        
    }
}
