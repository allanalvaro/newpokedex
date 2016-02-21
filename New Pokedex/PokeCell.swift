//
//  PokeCell.swift
//  New Pokedex
//
//  Created by Allan Alvaro Gomes on 21/02/16.
//  Copyright © 2016 allan. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    private var _pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 15.0
    }
    
    var pokemon: Pokemon {
        return _pokemon
    }
    
    func configureCell(pokemon: Pokemon) {
        self._pokemon = pokemon
        
        nameLbl.text = self._pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self._pokemon.pokedexId)")
        
    }
    
}
