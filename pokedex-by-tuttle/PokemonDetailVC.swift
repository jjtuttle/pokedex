//
//  PokemonDetailVC.swift
//  pokedex-by-tuttle
//
//  Created by James Tuttle on 5/14/16.
//  Copyright © 2016 James Tuttle. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
   
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    var pokeman: Pokeman!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokeman.name.capitalizedString
        let img = UIImage(named: "\(pokeman.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        
        
        pokeman.downloadPokemonDetails { () -> () in
            // this will be called after download is done
            self.updateUI()
        }

    }
    
    func updateUI() {
        descriptionLbl.text = pokeman.description
        typeLbl.text = pokeman.type
        defenseLbl.text = pokeman.defense
        heightLbl.text = pokeman.height
        pokedexLbl.text = "\(pokeman.pokedexId)"
        weightLbl.text = pokeman.weight
        baseAttackLbl.text = pokeman.baseAttack
        
        if pokeman.nextEvolutionId == "" {
            evoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: pokeman.nextEvolutionId)
            var str = "Next Evolution: \(pokeman.nextEvolutionTxt)"
            
            if pokeman.nextEvolutionLvl != "" {
                str += " - LVL \(pokeman.nextEvolutionLvl)"
            }
        }
        
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
