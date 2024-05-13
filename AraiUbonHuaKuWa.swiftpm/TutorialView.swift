import SwiftUI

struct TutorialView: View {
    @Binding var isShowingTutorial: Bool
    @State private var currentIndex = 0

    var tutorialImages = ["Tutorial 1", "Tutorial 2", "Tutorial 3"]
    var tutorialTexts = [
        "เลือกจำนวนผู้เล่น และหมวดหมู่",
        "หันจอไปทางเพื่อน",
        "เริ่มเกม และถามเพื่อหาคำตอบ"
    ]

    var body: some View {
        VStack {
            Image(tutorialImages[currentIndex])
                .resizable()
                .frame(width: 600, height: 400)
            Text(tutorialTexts[currentIndex])
                .font(.system(size: 50))

            if currentIndex < tutorialImages.count - 1 {
                Button(action: {
                    self.nextTutorial()
                }) {
                    Text("Next")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            } else {
                Button(action: {
                    self.isShowingTutorial = false
                }) {
                    Text("Back to Main")
                        .font(.headline)
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }

    func nextTutorial() {
        currentIndex = (currentIndex + 1) % tutorialImages.count
    }
}