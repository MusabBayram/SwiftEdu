//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Musab Bahadır Bayram on 12.09.2023.
//

import SwiftUI

struct CircularImageView: View {
    
    var image : Image
    
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .padding(10)
            .overlay(Circle()
                .stroke(Color.red, lineWidth: 10))
            .shadow(radius: 20)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("deadpool"))
    }
}
