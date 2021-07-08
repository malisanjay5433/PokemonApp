//
//  File.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import Foundation
class PokemonViewModel: ObservableObject{
    @Published var pokemons:[Pokemon]?
    init() {
        fetchPokemon()
    }
    func fetchPokemon(){
        APIService().fetchPokemons{ poke in
            self.pokemons = poke
        }
    }
}
