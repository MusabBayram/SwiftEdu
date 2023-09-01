//
//  SnapVC.swift
//  SnapchatClone
//
//  Created by Musab Bahadır Bayram on 26.07.2023.
//

import UIKit

class SnapVC: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var selectedSnap : Snap?
    var selectedTime : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let time = selectedTime {
            timeLabel.text = "Time Left: \(time)"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
