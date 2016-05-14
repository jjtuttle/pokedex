//
//  PokeCell.swift
//  pokedex-by-tuttle
//
//  Created by James Tuttle on 5/13/16.
//  Copyright © 2016 James Tuttle. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokeman: Pokeman!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    
    func configureCell(pokeman: Pokeman) {
        
        self.pokeman = pokeman
        
        nameLbl.text = self.pokeman.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokeman.pokedexId)")
        
    }
    
}
