//
//  LocationVC.swift
//  Zomate
//
//  Created by apple on 21/07/2023.
//

import UIKit
import CoreLocation
import MapKit

class LocationVC: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var bgImgTF : UIImageView!
    @IBOutlet weak var currentLTF : UITextField!
    @IBOutlet weak var selctdLTF : UITextField!
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(textFieldTapped))
        // txtFld.addGestureRecognizer(tapGesture)
        
        // Request location permission
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        // For use in foreground
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    // MARK: - TextField Tap Action
    
    @objc func textFieldTapped() {
        // Update the image in the imageView here
        bgImgTF.image = UIImage(named: "container") // Replace "newImage" with the name of your new image in the asset catalog or project resources.
    }
    
    // MARK: - MapView Open Button
    @IBAction func OpenMapViewBtn(){
        
        performSegue(withIdentifier: "showMapSegue", sender: nil)
    }
    
    // MARK: - CLLocationManagerDelegate
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
//            print("locations = \(locValue.latitude) \(locValue.longitude)")
//            // Assign the current location to the text field
//            currentLTF.text = "\(locValue.latitude), \(locValue.longitude)"
//        print("====Location====\(locValue)")
        if let location = locations.first {
                    // Get the user's current location
                    let currentLocation = location.coordinate
                    // Assign the current location to the first text field
                    currentLTF.text = "\(currentLocation.latitude), \(currentLocation.longitude)"
                }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showMapSegue" {
                let mapViewController = segue.destination as! MapVC
                mapViewController.didSelectLocationHandler = { [weak self] location in
                    self?.selctdLTF.text = location
                }
                mapViewController.selectedLocation = getSelectedLocation()
            }
        }

        func getSelectedLocation() -> CLLocationCoordinate2D? {
            // Parse the locationTextField text and return the CLLocationCoordinate2D object
            // Example: "latitude, longitude"
            guard let text = selctdLTF.text else { return nil }
            let components = text.split(separator: ",")
            guard components.count == 2,
                  let latitude = Double(components[0].trimmingCharacters(in: .whitespaces)),
                  let longitude = Double(components[1].trimmingCharacters(in: .whitespaces))
            else { return nil }
            return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
}
