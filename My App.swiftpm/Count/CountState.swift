import Foundation

struct CountState: Equatable {
    var currentValue: Int
}

extension CountState {
    static var empty: CountState {
        .init(currentValue: 0)
    }
}
