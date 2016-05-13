
//
//  Pokeman.swift
//  pokedex-by-tuttle
//
//  Created by James Tuttle on 5/13/16.
//  Copyright © 2016 James Tuttle. All rights reserved.
//

import Foundation

class Pokeman {
    
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
    }
}