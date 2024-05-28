//
//  JokesData.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import Foundation


// MARK: - Welcome
struct WelcomeJokes: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [ValueJokes]
}

// MARK: - Value
struct ValueJokes: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
