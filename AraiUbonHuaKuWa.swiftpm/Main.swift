import SwiftUI

struct Main: View {
    @State private var isShowingTutorial = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 750, height: 750)
                    .padding(.bottom, -150)
                    .padding(.top, -150)
                
                HStack {
                    NavigationLink(destination: PlayerView()) {
                    Image("Play")
                        .resizable()
                        .frame(width: 100, height: 100)
                    }
                }
                
                Button(action: {
                    self.isShowingTutorial = true
                }) {
                    Image("Tutorial")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                .popover(isPresented: $isShowingTutorial) {
                    Text("Tutorial content goes here")
                        .padding()
                }
            }
        }
    }
}
