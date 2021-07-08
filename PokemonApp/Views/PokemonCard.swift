//
//  Pokemon.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import SwiftUI
import SDWebImageSwiftUI
struct PokemonCard: View {
    let poke : Pokemon
    var body: some View {
        ZStack(alignment: .bottom){
            let urlString = URL(string: "\(baseURL)/master/public/" + poke.variations[0].image)
            WebImage(url: urlString).resizable()
//            Image("bla").resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding()
            PokemonbgText(pokemonName:poke.name)
        }
    }
   }

struct Pokemon_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(poke: Pokemon(name:"Pikachu", num: 1, link: "", variations: []))
    }
}
