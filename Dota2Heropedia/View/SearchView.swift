//
//  SearchView.swift
//  Dota2Heropedia
//
//  Created by Princeton Ace Lopez on 2/4/21.
//

import SwiftUI

struct SearchView: View {
    @Binding var search: String
    @Binding var buttonSearch: Bool
    var body: some View {
        HStack {
            TextField("Search a hero", text: $search)
                .font(.body)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                buttonSearch.toggle()
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.red)
            })
            .disabled(!search.isEmpty ? false :  true)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(search: .constant(""), buttonSearch: .constant(false))
    }
}
