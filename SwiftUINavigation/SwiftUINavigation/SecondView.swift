//
//  SecondView.swift
//  SwiftUINavigation
//
//  Created by Musab Bahadır Bayram on 27.10.2023.
//

import SwiftUI

struct SecondView: View {
    let selectedDog : Dog
    var body: some View {
        Text(selectedDog.name)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(selectedDog: dogs[0])
    }
}
