import SwiftUI

struct Loading3: View {
    var category: String
    
    var totalPlayers: Int

    var timeplayer1min: Int
    var timeplayer1sec: Int

    var timeplayer2min: Int
    var timeplayer2sec: Int
    
    @State private var text = "หันจอไปหาเพื่อน"
    @State private var isActive = false
    
    var totalPlayers: Int
    
    var body: some View {
        VStack {
            Text(text)
                .bold()
                .font(.system(size:120))
                .onAppear {
                    // Change the text after 3 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.text = "3"
                    }
                    // Change the text after 4 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                        self.text = "2"
                    }
                    // Change the text after 5 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        self.text = "1"
                    }
                    // Navigate to the playingscreen after 6 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        self.isActive = true
                    }
                }
            
            NavigationLink(
                destination: PlayingScreen2(category: category,totalPlayers:totalPlayers,timeplayer1min:timeplayer1min,timeplayer1sec:timeplayer1sec,timeplayer2min:timeplayer2min,timeplayer2sec:timeplayer2sec),
                isActive: $isActive,
                label: {
                    EmptyView()
                })
            .hidden()
        }
    }
}

