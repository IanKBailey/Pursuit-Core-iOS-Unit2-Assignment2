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
    


}

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return
    }
    
    
}
