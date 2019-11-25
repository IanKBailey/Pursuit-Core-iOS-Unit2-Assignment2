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

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard  let cell = tableView.dequeueReusableCell(withIdentifier: "episodeCellLeft", for: indexPath) as? GOTCell else {fatalError("couldn't dequeue a cell")}
        
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
