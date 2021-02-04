//
//  ContentView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/1/21.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @ObservedObject var viewModel = HeroesViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.heroes) {
                HeroView(hero: $0, viewModel: viewModel)
            }
            .navigationBarTitle(Text("Heropedia"))
            .onAppear {
                self.viewModel.fetchHeroes()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
