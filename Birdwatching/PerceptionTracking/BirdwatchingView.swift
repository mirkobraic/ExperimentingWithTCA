import SwiftUI
import ComposableArchitecture

struct BirdwatchingView: View {

    @Perception.Bindable var store: StoreOf<BirdwatchingDomain>

    var body: some View {
        WithPerceptionTracking {
            let _ = Self._printChanges()

            ZStack {
                VStack(spacing: 40) {
                    Text("WithPerceptionTracking")
                    BirdCounterView(birdCount: $store.birdCount)
                }

                HStack {
                    Text("Reset count: \(store.resetCount)")
                    Spacer()
                    Button("Reset") {
                        store.send(.resetCounter)
                    }
                }
                .foregroundStyle(Color.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .padding(20)
            }
            .background(.random)
        }
    }

}

