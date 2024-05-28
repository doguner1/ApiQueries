//
//  KanyeViewModel.swift
//  ApiQueries
//
//  Created by Dogu on 28.05.2024.
//

import Foundation
import Alamofire

class KanyeViewModel: ObservableObject {
    
    @Published var kanyeText = "Butona bas"
    
    func getKanye(){
        AF.request("https://api.kanye.rest",method: .get).responseDecodable(of: WelcomeKanye.self) { response in
            switch response.result {
            case .success(let data):
                self.kanyeText = data.quote
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getKanyeUrl() {
        let url = URL(string: "https://api.kanye.rest")!
        let task = URLSession.shared.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error{
                print(error)
                return
            }
            let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! [ String: String]
            DispatchQueue.main.async {
                self.kanyeText = json["quote"] ?? ""
            }
        }
        task.resume()
    }
    
}
