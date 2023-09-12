//
//  ContentView.swift
//  HeroWidget
//
//  Created by Musab Bahadır Bayram on 11.09.2023.
//

import SwiftUI

let superHeroArray = [deadpool,batman,ironman]

struct ContentView: View {
    
    @State var heroData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
        .padding()
    }
    func saveToDefaults(hero : Superhero) {
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
