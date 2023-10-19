//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Musab Bahadır Bayram on 19.10.2023.
//

import Foundation

class JokesViewModel: ObservableObject {
    
    @Published var jokes = [Value]()
    
    func getJokes() {
        
    }
    
}


//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
