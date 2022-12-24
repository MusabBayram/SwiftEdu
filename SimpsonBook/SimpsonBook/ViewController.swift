//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Musab Bahadır Bayram on 24.12.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    var simpsonNames = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableView.delegate = self
        TableView.dataSource = self
        
        let hommer = Simpson(name: "Homer Simpson", job: "Nucleer Safety", image: UIImage(named: "homer")!)
        let marge = Simpson(name: "Marge Simpson", job: "Houseeife", image: UIImage(named: "marge")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisa")!)
        
        let simpsonArray = [hommer, marge, bart, lisa]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        cell.contentConfiguration = content
        return cell
    }

}

