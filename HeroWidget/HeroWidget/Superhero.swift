//
//  Superhero.swift
//  HeroWidget
//
//  Created by Musab Bahadır Bayram on 11.09.2023.
//

import Foundation

struct Superhero : Identifiable, Codable {
    
    let image : String
    let name: String
    let realName : String
    
    var id : String {image}
    
}

let ironman = Superhero(image: "ironman", name: "Ironman", realName: "Tony Stark")

let batman = Superhero(image: "batman", name: "Batman", realName: "Bruce Wayne")

let deadpool = Superhero(image: "deadpool", name: "DeadPool", realName: "Wade Wilson")
