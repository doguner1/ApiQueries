//
//  JokesViewModel.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import Foundation
import Alamofire

class JokesViewModel: ObservableObject {
    
    @Published var jokes = [ValueJokes]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json",method: .get).responseDecodable(of: WelcomeJokes.self) { response in
            
            switch response.result {
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
