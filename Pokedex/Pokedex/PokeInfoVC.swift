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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
