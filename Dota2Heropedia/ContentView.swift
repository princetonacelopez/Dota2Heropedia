//
//  ContentView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/1/21.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @EnvironmentObject var viewModel : HeroesViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                SearchView()
                List(viewModel.filteredList) { hero in
                    HeroView(hero: hero, viewModel: viewModel)
                    
                }
                .listStyle(GroupedListStyle())
                .onAppear {
                    self.viewModel.fetchHeroes()
                }
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
