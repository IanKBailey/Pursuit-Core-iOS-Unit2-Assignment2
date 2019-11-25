//
//  GOTCell.swift
//  GameOfThrones
//
//  Created by Ian Bailey on 11/21/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class GOTCell: UITableViewCell {

    @IBOutlet weak var epCellImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var epSeaLabel: UILabel!
    
    
    func configureCell(for episode: GOTEpisode) {
        epCellImage.image = UIImage(named: episode.mediumImageID.description)
        nameLabel.text = episode.name
        epSeaLabel.text = ("S: \(episode.season) Ep: \(episode.number)")
        
    }
}
