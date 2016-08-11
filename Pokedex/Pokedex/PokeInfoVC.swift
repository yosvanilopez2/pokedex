//
//  PokeInfoVC.swift
//  Pokedex
//
//  Created by Yosvani Lopez on 8/9/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//
import UIKit
class PokeInfoVC: UIViewController {
    var pokemon: Pokemon!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var pokeDescription: UILabel!
    @IBOutlet weak var Weight: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var pokeId: UILabel!
    @IBOutlet weak var pokeImg1: UIImageView!
    @IBOutlet weak var pokeImg2: UIImageView!
    @IBOutlet weak var pokeImg3: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.text = pokemon.name
        self.pokeImg1.image = UIImage(named: "\(pokemon.pokeId)")
    }
}
