import SwiftUI

struct PlayingScreen: View {
    var category:String
    var totalPlayers:Int

    @State private var randomImageName: String = ""
    @State private var totalSecondsElapsed = 0
    @State private var minutesElapsed = 0
    @State private var secondsElapsed = 0
    @State private var timer: Timer? = nil
    @State private var isShowingCorrectPopup = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    VStack {
                        Image(randomImageName)
                            .resizable()
                            .frame(width: 500, height: 500)
                            .padding(.trailing, 30)
                            .onTapGesture {
                                self.randomImageName = self.randomImageName(for: self.category)
                            }
                    }
                    VStack{
                        Text(String(format: "%02d:%02d", minutesElapsed, secondsElapsed))
                            .font(.system(size: 120))
                            .frame(width: 400, height: 120)
                        VStack{
                            Button(action: {
                                self.addOneMinute()
                            }) {
                                Image("Incorrect")
                                    .resizable()
                                    .frame(width:250, height: 120)
                            }
                            
                            Button(action: {
                                self.stopTimer()
                                self.isShowingCorrectPopup = true
                            }) {
                                Image("Correct")
                                    .resizable()
                                    .frame(width:250, height: 120)
                            }
                        }.padding(.top, 20)
                    }
                }
                .onAppear {
                    self.startTimer()
                    self.randomImageName = self.randomImageName(for: self.category)                }
            }
            
            // Pop-up content
            if isShowingCorrectPopup {
                Color.white.opacity(0.5) // Semi-transparent background
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        VStack {
                            Text("Correct! You're doing great!")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                            // Additional pop-up content can go here
                            Text("Player 1 time :\(String(format: "%02d:%02d", minutesElapsed, secondsElapsed))")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                            Button(action: {
                                self.isShowingCorrectPopup = false
                            }) {
                                NavigationLink(destination: Loading2(category:category,totalPlayers:totalPlayers,timeplayer1min:minutesElapsed,timeplayer1sec:secondsElapsed)){
                                    Text("Close")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                }    
                                }
                        }
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.9) // Adjust size as needed
                    )
            }
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.totalSecondsElapsed += 1
            self.minutesElapsed = self.totalSecondsElapsed / 60
            self.secondsElapsed = self.totalSecondsElapsed % 60
        }
    }
    
    func addOneMinute() {
        totalSecondsElapsed += 60
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    // Function to generate random image name based on category
    func randomImageName(for category: String) -> String {
        // Determine the range of image names based on category
        var imageNamePrefix = ""
        var maxImageIndex = 0
        switch category {
        case "1":
            imageNamePrefix = "01-"
            maxImageIndex = 10
        case "2":
            imageNamePrefix = "02-"
            maxImageIndex = 10
        case "3":
            imageNamePrefix = "03-"
            maxImageIndex = 10
        case "4":
            imageNamePrefix = "04-"
            maxImageIndex = 10
        case "5":
            imageNamePrefix = "05-"
            maxImageIndex = 10
        case "6":
            imageNamePrefix = "06-"
            maxImageIndex = 20
        case "7":
            let randomPrefixIndex = Int.random(in: 1...6)
            imageNamePrefix = String(format: "%02d-", randomPrefixIndex)
            maxImageIndex = 10
        default:
            imageNamePrefix = ""
            maxImageIndex = 0
        }
        
        // Generate a random image index within the range
        let randomIndex = Int.random(in: 1...maxImageIndex)
        
        // Construct the image name
        return "\(imageNamePrefix)\(String(format: "%02d", randomIndex))"
    }
}
