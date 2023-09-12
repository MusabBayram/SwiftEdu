//
//  ContentView.swift
//  HeroWidget
//
//  Created by Musab Bahadır Bayram on 11.09.2023.
//

import SwiftUI

let superHeroArray = [deadpool,batman,ironman]

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
