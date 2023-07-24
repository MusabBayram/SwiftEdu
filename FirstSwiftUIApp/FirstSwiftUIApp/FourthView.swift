
import SwiftUI

struct FourthView: View {
    
    @State var myName = "Atil"
    
    var body: some View {
        VStack{
            Text(myName)
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                self.myName = "James"
            }) {
                Text("MyButton")
            }
        }
        
    }
}

#if DEBUG
struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
#endif
