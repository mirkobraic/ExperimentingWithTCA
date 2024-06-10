import SwiftUI

struct BirdCounterView: View {

    @Binding var birdCount: Int

    var body: some View {
        let _ = Self._printChanges()
        
        VStack(spacing: 20) {
            HStack {
                Text("Bird count: ")
                Text(("\(birdCount)"))
            }

            HStack(spacing: 20) {
                Button("-") {
                    birdCount -= 1
                }
                Button("+") {
                    birdCount += 1
                }
            }
            .foregroundStyle(Color.white)
        }
        .frame(maxWidth: 200)
        .padding(5)
        .background(.random)
    }

}
