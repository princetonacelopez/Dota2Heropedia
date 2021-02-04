//
//  Dota2Heropedia.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/1/21.
//

import SwiftUI

@main
struct Dota2Heropedia: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(HeroesViewModel())
        }
    }
}
