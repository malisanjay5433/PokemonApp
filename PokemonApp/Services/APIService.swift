//
//  APIService.swift
//  PokemonApp
//
//  Created by Sanjay Mali on 08/07/21.
//

import Foundation
let baseURL : String = "https://raw.githubusercontent.com/robert-z/simple-pokemon-json-api"
class APIService {
    func fetchPokemons(completion :@escaping ([Pokemon]) ->()){
        let url:URL = URL(string:baseURL + "/master/data/pokemon.json")!
        URLSession.shared.dataTask(with:url) {data, _, _ in
            guard let data = data else {
                return
            }
            DispatchQueue.main.async {
                do{
                    let pokemon = try JSONDecoder().decode([Pokemon].self, from:data)
                    print("pokemon : \(pokemon)")
                    completion(pokemon)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
