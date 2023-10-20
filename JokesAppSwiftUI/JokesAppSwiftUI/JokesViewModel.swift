//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Musab Bahadır Bayram on 19.10.2023.
//

import Foundation
import Alamofire

class JokesViewModel: ObservableObject {
    
    @Published var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result {
                
            case .success(let data):
                let value = data.value
                self.jokes += value
                
            case .failure(let err):
                print(err)
            }
            
        }

    }
    
}


//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
