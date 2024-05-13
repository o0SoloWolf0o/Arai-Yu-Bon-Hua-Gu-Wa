import SwiftUI

struct Loading2: View {
    var category:String
    var totalPlayers:Int
    var timeplayer1min:Int
    var timeplayer1sec:Int
    
    @State private var imageToShow = "หันจอ"
    @State private var isActive = false
    
    var body: some View {
        VStack {
            Image(imageToShow)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onAppear {
                    // Change the image after 3 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.imageToShow = "Loading1"
                    }
                    // Change the image after 4 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                        self.imageToShow = "Loading2"
                    }
                    // Change the image after 5 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        self.imageToShow = "Loading3"
                    }
                    // Navigate to the PlayingScreen after 6 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        self.isActive = true
                    }
                }
            
            NavigationLink(
                destination: PlayingScreen2(category:category,totalPlayers:totalPlayers,timeplayer1min:timeplayer1min,timeplayer1sec:timeplayer1sec),
                isActive: $isActive,
                label: {
                    EmptyView()
                })
            .hidden()
        }
    }
}

