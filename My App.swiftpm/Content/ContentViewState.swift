import Foundation

struct ContentViewState: Equatable {
    var number: String
    var date: String
    static func from(state: AppState) -> ContentViewState {
        .init(
            number: "\(state.count.currentValue)",
            date: state.lastChange.map { " (\($0))" } ?? ""
        )
    }
    static var empty: ContentViewState {
        .init(number: "0", date: "")
    }
}
