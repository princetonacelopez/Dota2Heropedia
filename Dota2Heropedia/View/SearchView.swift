//
//  SearchView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/4/21.
//

import SwiftUI

struct SearchView: View {
    @EnvironmentObject var viewModel: HeroesViewModel
    
    var body: some View {
        HStack {
            TextField("Search a hero", text: $viewModel.searchHero, onCommit: {
                viewModel.searchHeroes(hero: viewModel.searchHero)
            })
            Button(action: {
                viewModel.searchHeroes(hero: viewModel.searchHero)
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.red)
            })
        }
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
