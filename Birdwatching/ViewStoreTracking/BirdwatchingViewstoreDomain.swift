import ComposableArchitecture

@Reducer
struct BirdwatchingViewstoreDomain {

    struct State: Equatable {

        var birdCount: Int
        var resetCount = 0

    }

    enum Action: Equatable {

        case resetCounter
        case birdCountChanged(Int)

    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .resetCounter:
                state.birdCount = 0
                state.resetCount += 1

                return .none
            case .birdCountChanged(let count):
                state.birdCount = count

                return .none
            }
        }
    }

}
