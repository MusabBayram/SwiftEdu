//
//  Cat.swift
//  SwiftUINavigation
//
//  Created by Musab Bahadır Bayram on 27.10.2023.
//

import Foundation

import Foundation

struct Cat: Identifiable, Hashable {
    var id = UUID()
    let name : String
}

let cats : [Cat] = [Cat(name: "Lucy"),Cat(name: "Sarman"),Cat(name: "Wiskas"),Cat(name: "Tarçın")]
