

import SwiftUI

struct SecondView: View {
    var body: some View {
        Image("metallica")
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
        
    }
}

#if DEBUG
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
#endif
