//
//  WebService.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/4/21.
//

import SwiftUI
import Combine

//class WebService {
//
//    func fetchHeroes(url: URL, completion: @escaping ([Hero]?) -> ()) {
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data, error == nil else {
//                completion(nil)
//                return
//            }
//            let response = try? JSONDecoder().decode(Heroes.self, from: data)
//            if let response = response {
//                DispatchQueue.main.async {
//                    completion(response.heroes)
//                }
//            }
//        }
//    }
//}
