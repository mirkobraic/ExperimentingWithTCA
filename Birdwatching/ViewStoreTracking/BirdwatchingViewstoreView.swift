import SwiftUI
import ComposableArchitecture

struct BirdwatchingViewstoreView: View {

    let store: StoreOf<BirdwatchingViewstoreDomain>

    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            let _ = Self._printChanges()

            ZStack {
                VStack(spacing: 40) {
                    Text("WithViewStore")
                    BirdCounterView(birdCount: viewStore.binding(get: \.birdCount, send: { .birdCountChanged($0) }))
                }

                HStack {
                    Text("Reset count: \(viewStore.resetCount)")
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

