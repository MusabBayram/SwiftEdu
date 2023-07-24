
import SwiftUI

struct FifthView: View {
    
    @State var myName = "James"
    
    var body: some View {
        VStack{
        Text(myName)
            .font(.largeTitle)
            .padding()
            
        TextField("placeholder", text: $myName)
        }
    }
}

#if DEBUG
struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
#endif
