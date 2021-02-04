//
//  HeroModel.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/1/21.
//

import Foundation
import SwiftUI

struct Hero: Codable, Identifiable {
    let id, hero_id: Int?
    let name, localized_name, primary_attr, attack_type, img, icon: String?
    let roles: [String?]
    let base_int, base_agi, base_str, move_speed, base_attack_min, base_attack_max, base_health, base_mana, base_mr, attack_range, projectile_speed, legs: Int?
    let int_gain, agi_gain, str_gain, base_armor, base_health_regen, base_mana_regen, attack_rate, turn_rate: Double?
}

let sampleData: [Hero] = [
    .init(id: 1, hero_id: 1, name: "npc_dota_hero_antimage", localized_name: "Anti-Mage", primary_attr: "agi", attack_type: "Melee", img: "/apps/dota2/images/heroes/antimage_full.png?", icon: "/apps/dota2/images/heroes/antimage_icon.png", roles: [
        "Carry",
        "Escape",
        "Nuker"
    ], base_int: 12, base_agi: 24, base_str: 23, move_speed: 310, base_attack_min: 29, base_attack_max: 33, base_health: 200, base_mana: 75, base_mr: 25, attack_range: 150, projectile_speed: 0, legs: 2, int_gain: 1.8, agi_gain: 2.8, str_gain: 1.3, base_armor: -1, base_health_regen: 0.25, base_mana_regen: 0, attack_rate: 1.4, turn_rate: 0.5)
]
