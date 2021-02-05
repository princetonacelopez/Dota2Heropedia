//
//  ContentView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/1/21.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @StateObject var viewModel = HeroesViewModel()
    @State private var search = ""
    @State private var buttonSearch: Bool = false
    
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            VStack {
                SearchView(search: $search, buttonSearch: $buttonSearch)
                FilterHero()
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        if buttonSearch && !search.isEmpty {
                            ForEach(viewModel.heroes.filter({ $0.localized_name.contains(search)})) { hero in
                                HeroItem(hero: hero)
                            }
                        }
                        else {
                            ForEach(viewModel.heroes) { hero in
                                HeroItem(hero: hero)
                            }
                            .onAppear {
                                buttonSearch = false
                            }
                        }
                    }
                    .padding()
                }.id(UUID().uuidString)
                .edgesIgnoringSafeArea(.all)
            }
            .navigationBarTitle(Text("Heropedia"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
