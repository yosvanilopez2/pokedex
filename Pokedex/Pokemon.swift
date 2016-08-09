//
//  Pokemon.swift
//  Pokedex
//
//  Created by Yosvani Lopez on 8/9/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//

import Foundation

class Pokemon {
    // can put the exclamation when it is guaranteed to have the property
    private var _name: String!
    private var _pokeId: Int!
    
    var name: String {
        return _name
    }
    var pokeId: Int{
        return _pokeId
    }
    init(name: String, pokeId: Int) {
        self._pokeId = pokeId
        self._name = name 
        
    }
    
    
}