//
//  WeatherViewModel.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import Foundation
import CoreLocation

class WeatherViewModel: ObservableObject {
    
    @Published var weatherData: WeatherData?
    
    func fetchWeatherData(for location: CLLocation) {
        let apiKey = "fb1081f142524af8b3596b96224e7919"
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(location.coordinate.latitude)&lon=\(location.coordinate.longitude)&units=metric&appid=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }
        
        // Make a network request to fetch weather data
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let weatherResponse = try decoder.decode(WeatherResponse.self, from: data)
                
                DispatchQueue.main.async {
                    // Update the weatherData state with fetched data
                    self.weatherData = WeatherData(locationName: weatherResponse.name, temperature: weatherResponse.main.temp, condition: weatherResponse.weather.first?.description ?? "")
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
}
