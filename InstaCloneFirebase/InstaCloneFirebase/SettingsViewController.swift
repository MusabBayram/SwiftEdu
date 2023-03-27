//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Musab Bahadır Bayram on 27.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        performSegue(withIdentifier: "toViewController", sender: nil)
    }

}
