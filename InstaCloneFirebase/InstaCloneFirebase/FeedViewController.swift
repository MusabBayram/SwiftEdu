//
//  FeedViewController.swift
//  InstaCloneFirebase
//
//  Created by Musab Bahadır Bayram on 27.03.2023.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.userEmailLabel.text = "musab@musab.com"
        cell.likeLabel.text = "10000"
        cell.commentLabel.text = "georges"
        cell.userImageView.image = UIImage(named: "select.png")
        return cell
    }

}
