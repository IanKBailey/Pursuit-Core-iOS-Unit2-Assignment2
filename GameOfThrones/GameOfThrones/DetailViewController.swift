//
//  DetailViewController.swift
//  GameOfThrones
//
//  Created by Ian Bailey on 11/27/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailSeason: UILabel!
    @IBOutlet weak var detailEpisode: UILabel!
    @IBOutlet weak var detailRuntime: UILabel!
    @IBOutlet weak var detailAirdate: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    
    
    var episodes: GOTEpisode?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    func updateUI() {
        guard let episode = episodes else {
            fatalError("Couldn't update detail view controller, check segue")
        }
        detailImage.image = UIImage(named: episode.originalImageID.description)
        detailName.text = episode.name
        detailSeason.text = "Season: \(episode.season)"
        detailEpisode.text = "Episode: \(episode.number)"
        detailRuntime.text = "Runtime: \(episode.runtime)"
        detailAirdate.text = "Original Air Date: \(episode.airdate)"
        detailDescription.text = episode.summary
        
    }


}
