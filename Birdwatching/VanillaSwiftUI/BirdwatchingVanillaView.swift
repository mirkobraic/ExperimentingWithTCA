import SwiftUI

struct BirdwatchingVanillaView: View {

    @State var birdCount: Int
    @State var resetCount: Int = 0

    var body: some View {
        let _ = Self._printChanges()

        ZStack {
            VStack(spacing: 40) {
                Text("Vanilla SwiftUI")
                BirdCounterView(birdCount: $birdCount)
            }

            HStack {
                Text("Reset count: \(resetCount)")
                Spacer()
                Button("Reset") {
                    birdCount = 0
                    resetCount += 1
                }
            }
            .foregroundStyle(Color.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(20)
        }
        .background(.random)
    }

}
