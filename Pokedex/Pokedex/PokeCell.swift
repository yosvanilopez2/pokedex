//
//  PokeCell.swift
//  Pokedex
//
//  Created by Yosvani Lopez on 8/9/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//

import UIKit
class PokeCell: UICollectionViewCell {

    // if cell is not configured it will crash
    @IBOutlet weak var pokeImg: UIImageView!
    @IBOutlet weak var pokeLbl: UILabel!
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        self.pokeLbl.text = pokemon.name.capitalizedString
        self.pokeImg.image = UIImage(named: String(pokemon.pokeId))
    }
    
    
}
