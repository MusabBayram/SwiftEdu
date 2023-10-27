//
//  Dog.swift
//  SwiftUINavigation
//
//  Created by Musab Bahadır Bayram on 27.10.2023.
//

import Foundation

struct Dog: Identifiable, Hashable {
    var id = UUID()
    let name : String
}

let dogs : [Dog] = [Dog(name: "Barley"),Dog(name: "Lacky"),Dog(name: "Daisy"),Dog(name: "Jack")]
