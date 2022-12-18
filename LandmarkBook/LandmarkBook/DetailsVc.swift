//
//  DetailsVc.swift
//  LandmarkBook
//
//  Created by Musab Bahadır Bayram on 18.12.2022.
//

import UIKit

class DetailsVc: UIViewController {
    @IBOutlet weak var landmarkLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        

        // Do any additional setup after loading the view.
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
