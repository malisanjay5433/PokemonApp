//
//  PokemonbgText.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import SwiftUI

struct PokemonbgText: View {
    let pokemonName: String
    var body: some View {
        Text(pokemonName).font(.largeTitle).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center).shadow(radius: 25).padding()
        
    }
}

struct PokemonbgText_Previews: PreviewProvider {
    static var previews: some View {
        PokemonbgText(pokemonName: "")
    }
}
