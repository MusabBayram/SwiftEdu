//
//  ViewController.swift
//  TravelBook
//
//  Created by Musab Bahadır Bayram on 6.02.2023.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self

    }


}

