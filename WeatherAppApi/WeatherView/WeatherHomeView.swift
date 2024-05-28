//
//  WeatherHomeView.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import SwiftUI
import CoreLocation

struct WeatherHomeView: View {
    @StateObject private var locationManager = LocationManager()
    @ObservedObject var vm = WeatherViewModel()
    
    var body: some View {
        VStack {
            // Display weather information if available
            if let weatherData = vm.weatherData {
                Text("\(Int(weatherData.temperature))°C")
                    .font(.custom("", size: 70))
                    .padding()
                
                VStack {
                    Text("\(weatherData.locationName)")
                        .font(.title2).bold()
                    Text("\(weatherData.condition)")
                        .font(.body).bold()
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("CodeLab")
                    .bold()
                    .padding()
                    .foregroundColor(.gray)
            } else {
                // Display a progress view while weather data is being fetched
                ProgressView()
            }
        }
        .frame(width: 300, height: 300)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .onAppear {
            // Request location when the view appears
            locationManager.requestLocation()
        }
        .onReceive(locationManager.$location) { location in
            // Fetch weather data when the location is updated
            guard let location = location else { return }
            vm.fetchWeatherData(for: location)
        }
    }
    
    // Fetch weather data for the given location
    
}

#Preview {
    WeatherHomeView()
}
