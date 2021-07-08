//
//  Pokemon.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import Foundation
struct  Pokemon:Decodable, Identifiable{
    var id: UUID{
        get{
            UUID()
        }
    }
    let name : String
    let num: Int
    let link:String
    let variations : [PokeVariation]
}
struct PokeVariation:Decodable {
    let name:String
    let description: String
    let image:String
}
