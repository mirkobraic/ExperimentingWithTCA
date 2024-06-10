import SwiftUI
import ComposableArchitecture

@main
struct BirdwatchingApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                BirdwatchingView(store: Store(initialState: .init(birdCount: 0)) {
                    BirdwatchingDomain()
                })

                BirdwatchingViewstoreView(store: Store(initialState: .init(birdCount: 0)) {
                    BirdwatchingViewstoreDomain()
                })

                BirdwatchingVanillaView(birdCount: 0)
            }
        }
    }
}
