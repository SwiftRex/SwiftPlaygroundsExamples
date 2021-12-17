import Foundation

struct AppState: Equatable {
    var lastChange: Date?
    var count: CountState
}    

extension AppState {
    static var empty: AppState { 
        .init(lastChange: nil, count: .empty)
    }
}
