//
//  ViewController.swift
//  Pokedex
//
//  Created by Yosvani Lopez on 8/9/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    // use instant initialization in order since we are creating empty object regardless
    var pokemon = [Pokemon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        parsePokemonCSV()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func parsePokemonCSV() {
        // can use the exclamation point here because we know the file is there otherwise
        // it would be unwise to do so 
        let path = NSBundle.mainBundle().pathForResource("pokemon", ofType: "csv")!
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 718
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        func getPokemonIDwithIndex(index: Int) -> Int {
            // index starts at 0 where pokemons begin at 1
            return index + 1
        }
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell", forIndexPath: indexPath) as? PokeCell {
            let pokemon = Pokemon(name: "Pokemon", pokeId: getPokemonIDwithIndex(indexPath.row))
            cell.configureCell(pokemon)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
}

