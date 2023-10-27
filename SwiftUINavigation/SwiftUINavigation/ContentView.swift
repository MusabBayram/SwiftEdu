//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Musab Bahadır Bayram on 27.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(dogs) { dog in
                NavigationLink {
                    SecondView(selectedDog: dog)
                } label: {
                    Text(dog.name)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
