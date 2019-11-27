//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var episodes = [[GOTEpisode]]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate = self
    episodes = GOTEpisode.getEpisodes()
    
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else {fatalError("failed to segue")}
        
        let episode = episodes[indexPath.section][indexPath.row]
        
        detailViewController.episodes = episode
        
    }
    
    
    
    
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: GOTCell
        
        if indexPath.section % 2 == 0 {
            guard let gotCell = tableView.dequeueReusableCell(withIdentifier: "episodeCellLeft", for: indexPath) as? GOTCell else {fatalError("Couldn't dequeue episodeCellLeft")
                
            }
            cell = gotCell
        } else {
            guard let gotCell = tableView.dequeueReusableCell(withIdentifier: "episodeCellRight", for: indexPath) as? GOTCell else {fatalError("Couldn't dequeue episodeCellRight")
                
            }
            cell = gotCell
        
        }
        
        
        let episode = episodes[indexPath.section][indexPath.row]
        cell.configureCell(for: episode)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        episodes.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return episodes[section].first?.season.description
    }
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
