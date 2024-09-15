import ComposableArchitecture
import SwiftUI

struct ___VARIABLE_moduleName___View: View {
    @Bindable var store: StoreOf<___VARIABLE_moduleName___Feature>

    var body: some View {
        Form {
            Text("Hello World")
        }
        .navigationTitle(Text(store.title))
        .onAppear {
            store.send(.onAppear)
        }
        .onDisappear {
            store.send(.onDisappear)
        }
    }
}

#if DEBUG

    #Preview {
        @Previewable var store: StoreOf<___VARIABLE_moduleName___Feature> = .init(
            initialState: ___VARIABLE_moduleName___Feature.State()
        ) {
            ___VARIABLE_moduleName___Feature()
        }

        NavigationStack {
            ___VARIABLE_moduleName___View(store: store)
        }
    }

#endif
