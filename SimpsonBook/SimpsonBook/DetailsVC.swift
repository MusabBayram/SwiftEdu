//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Musab Bahadır Bayram on 24.12.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var JobNameLabel: UILabel!
    
    var selectedImage = UIImage()
    var selectedName = ""
    var selectedJobName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.image = selectedImage
        NameLabel.text = selectedName
        JobNameLabel.text = selectedJobName
    
    }
    
    

}
