//
//  weatherManager.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 10.11.23.
//

import Foundation
import CoreLocation


struct WeatherData {
    let locationName: String
    let temperature: Double
    let condition: String
}


struct WeatherResponse: Codable {
    let name: String
    let main: MainWeather
    let weather: [Weather]
}

struct MainWeather: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
}




class MyLocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    @Published var location: CLLocation?
    
    override init() {
        super.init()
        locationManager.delegate = self
    }
    
    func requestLocation() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        print("requestlocation has run")
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        self.location = location
        locationManager.startUpdatingLocation()
        print("locationmanager 1 has run \(location)")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
        print("locationManger 2 has run")
    }
}

