//
//  HeroModel.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/1/21.
//

import Foundation
import SwiftUI

struct Hero: Decodable, Identifiable {
    //hero basic info
    let id: Int
    let name: String
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let roles: [String]
    let img: String
    let icon: String
    //hero stats
    let base_health: Int
    let base_health_regen: Double? //null
    let base_mana: Int
    let base_mana_regen: Double
    let base_armor: Double
    let base_mr: Int
    let base_attack_min: Int
    let base_attack_max: Int
    let base_str: Int
    let base_agi: Int
    let base_int: Int
    let str_gain: Double
    let agi_gain: Double
    let int_gain: Double
    let attack_range: Int
    let projectile_speed: Int
    let attack_rate: Double
    let move_speed: Int
    let legs: Int
}

//mockup data
let sampleData: [Hero] = [
    Hero(id: 1, name: "npc_dota_hero_antimage", localized_name: "Anti-Mage", primary_attr: "agi", attack_type: "Melee", roles: ["Carry","Escape","Nuker"], img: "/apps/dota2/images/heroes/antimage_full.png", icon: "https://api.opendota.com/apps/dota2/images/heroes/antimage_icon.png", base_health: 200, base_health_regen: 0.25, base_mana: 75, base_mana_regen: 0, base_armor: -1, base_mr: 25, base_attack_min: 29, base_attack_max: 33, base_str: 23, base_agi: 24, base_int: 12, str_gain: 1.3, agi_gain: 2.8, int_gain: 1.8, attack_range: 150, projectile_speed: 0, attack_rate: 1.4, move_speed: 310, legs: 2)
]


