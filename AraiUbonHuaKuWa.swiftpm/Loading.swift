import SwiftUI

struct Loading: View {
    var category: String
    
    @State private var imageToShow = "หันจอ"
    @State private var isActive = false

    var totalPlayers: Int
    
    var body: some View {
        VStack {
            Image(imageToShow)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onAppear {
                    // Change the image after 3 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.imageToShow = "Loading3"
                    }
                    // Change the image after 4 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                        self.imageToShow = "Loading2"
                    }
                    // Change the image after 5 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        self.imageToShow = "Loading1"
                    }
                    // Navigate to the PlayingScreen after 6 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        self.isActive = true
                    }
                }
            
            NavigationLink(
                destination: PlayingScreen(category:category,totalPlayers:totalPlayers),
                isActive: $isActive,
                label: {
                    EmptyView()
                })
            .hidden()
        }
    }
}
