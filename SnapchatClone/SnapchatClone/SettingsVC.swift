//
//  SettingsVC.swift
//  SnapchatClone
//
//  Created by Musab Bahadır Bayram on 26.07.2023.
//

import UIKit
import FirebaseAuth

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSignInVC", sender: nil)
        }
        catch {
            
        }
    }
    
}
