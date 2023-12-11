//
//  WeatherHome.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 10.11.23.
//

import SwiftUI
import CoreLocation

struct WeatherHome: View {
    

    @StateObject private var locationManager = MyLocationManager()
    @State private var weatherData: WeatherData?
    
    
    var body: some View {
        
        VStack {
            if let weatherData = weatherData {
                Text("\(Int(weatherData.temperature))°C")//.font....
                    .padding()
                    Text("\(weatherData.locationName)")
                    Text("\(weatherData.condition)")
            }//if
            else {
                ContentView()
            }//else
        }//V
        .frame(width: 300, height: 300)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .onAppear{
            // Request location when the view appears
            locationManager.requestLocation()
        }
        .onReceive(locationManager.$location) { location in
            // Fetch weather data when the location is updated
            guard let location = location else { return }
            fetchWeatherData(for: location)
        }
    }
    
  

                            
    private func fetchWeatherData(for location: CLLocation) {
        print("fetch has been entered")
        print(location)
        let apiKey = "bb8dc2ad79ba9e55d07bc70473939b48"
        
        
        let lat = location.coordinate.latitude
        let lon = location.coordinate.longitude
        print(lat, lon)
        
        //!!!!!following copied
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&units=metric&appid=\(apiKey)"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) {data, _ , error in guard let data = data else {return}
            
            do {
                let decoder = JSONDecoder()
                let weatherResponse = try decoder.decode(WeatherResponse.self, from: data)
                print(weatherResponse)
                
                // put location stuff into weather class?
                DispatchQueue.main.async {
                    weatherData = WeatherData(locationName: weatherResponse.name, temperature: weatherResponse.main.temp, condition: weatherResponse.weather.first?.description ?? "")
                    print("bla")
                    print(weatherResponse.name)
                    print(weatherData?.locationName)
                }
            } catch {
                print("fetching did not work")
            }
        }.resume()
    }
}

struct WeatherHome_Previews: PreviewProvider {
    static var previews: some View {
        WeatherHome()
    }
}
