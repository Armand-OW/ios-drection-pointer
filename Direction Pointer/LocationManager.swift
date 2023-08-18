//
//  LocationManager.swift
//  Direction Pointer
//
//  Created by OW on 2023/08/18.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    private var locationManager = CLLocationManager()
    @Published var userLocation: CLLocation?
    @Published var targetLocation: CLLocation = CLLocation(latitude: SearchLatitude, longitude: SearchLongitude)
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            userLocation = location
        }
    }
    
    // Implement methods to calculate the direction to the target location
}
