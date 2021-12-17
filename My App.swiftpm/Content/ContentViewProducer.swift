import CombineRex
import CombineRextensions

extension ViewProducer where Context == Void, ProducedView == ContentView {
    static func main(store: ObservableViewModel<AppAction, AppState>) -> ViewProducer {
        ViewProducer {
            ContentView(
                viewModel: store
                    .projection(
                        action: \.toAppAction, 
                        state: ContentViewState.from
                    )
                    .asObservableViewModel(initialState: .empty)
            )
        }
    }
}
