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
    private var _description: String!
    private var _height: String!
    private var _weight: String!
    private var _type: String!
    private var _defense: String!
    private var _attack: String! 
    private var _nextEvo: String!
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