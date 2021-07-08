//
//  ContentView.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pokemonVM: PokemonViewModel = PokemonViewModel()
    var body: some View {
        NavigationView{
            PokemonList(pokemons:pokemonVM.pokemons ?? []).navigationTitle("Pokemons")
        
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
