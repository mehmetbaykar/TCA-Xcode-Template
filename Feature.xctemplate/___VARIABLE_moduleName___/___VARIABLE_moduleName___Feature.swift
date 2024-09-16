import ComposableArchitecture
import Foundation

@Reducer
public struct ___VARIABLE_moduleName___Feature {
    @ObservableState public struct State: Equatable {
        public var title = "___VARIABLE_moduleName___"
    }

    public enum Action: Equatable {
        case setTitle(String)
        case onAppear
    }

    public var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case let .setTitle(title):
                state.title = title
                return .none

            case .onAppear:
                return .none
            }
        }
    }
}
