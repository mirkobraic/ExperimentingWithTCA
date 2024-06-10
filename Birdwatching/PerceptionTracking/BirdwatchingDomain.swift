import ComposableArchitecture

@Reducer
struct BirdwatchingDomain {

    @ObservableState
    struct State: Equatable {

        var birdCount: Int
        var resetCount = 0

    }

    enum Action: BindableAction, Equatable {

        case resetCounter
        case binding(BindingAction<State>)

    }

    var body: some ReducerOf<Self> {
        BindingReducer()
        Reduce { state, action in
            switch action {
            case .resetCounter:
                state.birdCount = 0
                state.resetCount += 1

                return .none
            default:
                return .none
            }
        }
    }

}
