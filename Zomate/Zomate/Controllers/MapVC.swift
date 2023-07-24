//
//  MapVC.swift
//  Zomate
//
//  Created by apple on 21/07/2023.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var didSelectLocationHandler: ((String) -> Void)?
    var selectedLocation: CLLocationCoordinate2D?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        // Add a tap gesture recognizer to the map view
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleMapTap))
        mapView.addGestureRecognizer(tapGesture)
        
        // Add "Done" button to the navigation bar
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTapped))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc func handleMapTap(_ sender: UITapGestureRecognizer) {
        let tapPoint = sender.location(in: mapView)
        selectedLocation = mapView.convert(tapPoint, toCoordinateFrom: mapView)
    }
    
    @objc func doneButtonTapped() {
        // Update the locationTextField with the selected location's latitude and longitude
        
    }
    
    // MARK: - BACK BUTTON WITH CORDINATES
    @IBAction func bckBtn(){
        if let location = selectedLocation {
            let latitude = location.latitude
            let longitude = location.longitude
            let formattedLocation = String(format: "%.6f, %.6f", latitude, longitude)
            presentingViewController?.dismiss(animated: true) {
                self.didSelectLocationHandler?(formattedLocation)
            }
        }
      }
}
