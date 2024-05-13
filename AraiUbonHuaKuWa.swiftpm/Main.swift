import SwiftUI

struct Main: View {
    @State private var isShowingTutorial = false

    var body: some View {
        NavigationStack {
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 750, height: 750)
                    .padding(.top, -150)
                    .padding(.bottom, -150)

                VStack {
                    NavigationLink(destination: PlayerView()) {
                        Image("Play")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    Button(action: {
                        isShowingTutorial.toggle()
                    }) {
                        Image("Tutorial")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isShowingTutorial, content: {
            TutorialView(isShowingTutorial: $isShowingTutorial)
        })
    }
}