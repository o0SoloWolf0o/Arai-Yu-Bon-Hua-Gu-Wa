import SwiftUI

struct PlayingScreen4: View {
    var category:String
    var totalPlayers:Int
    var timeplayer1min:Int
    var timeplayer1sec:Int
    var timeplayer2min:Int
    var timeplayer2sec:Int
    var timeplayer3min:Int
    var timeplayer3sec:Int
    
    @State private var randomImageName: String = ""
    @State private var totalSecondsElapsed = 0
    @State private var minutesElapsed = 0
    @State private var secondsElapsed = 0
    @State private var timer: Timer? = nil
    @State private var isShowingCorrectPopup = false

    var body: some View{
        ZStack {
            VStack {
                HStack{
                    VStack {
                        Image(randomImageName)
                            .resizable()
                            .frame(width: 500, height: 500)
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

            if isShowingCorrectPopup {
                Color.black.opacity(1)
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        VStack {
                            Text("Correct! You're doing great!")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                            Text("Player 1 time : \(String(format: "%02d:%02d", timeplayer1min, timeplayer1sec))")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                            Text("Player 2 time : \(String(format: "%02d:%02d", timeplayer2min, timeplayer2sec))")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                            Text("Player 3 time : \(String(format: "%02d:%02d", timeplayer3min, timeplayer3sec))")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                            Text("Player 4 time : \(String(format: "%02d:%02d", minutesElapsed, secondsElapsed))")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                            
                            Button(action: {
                                self.isShowingCorrectPopup = false
                            }) {
                                NavigationStack{
                                    NavigationLink(destination: Main()){
                                        Text("Close")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding()
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                        }
                                }
                                }
                        }
                            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.9)
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

    func randomImageName(for category: String) -> String {
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
        
        let randomIndex = Int.random(in: 1...maxImageIndex)
        
        return "\(imageNamePrefix)\(String(format: "%02d", randomIndex))"
    }
}
