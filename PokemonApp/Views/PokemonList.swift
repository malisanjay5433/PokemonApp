//
//  PokemonList.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import SwiftUI

struct PokemonList: View {
    let pokemons: [Pokemon]
    var body: some View {
        List{
            ForEach(pokemons){ poke in
                PokemonCard(poke: poke)
                    .listRowBackground(Color.clear)
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList(pokemons:[])
    }
}
