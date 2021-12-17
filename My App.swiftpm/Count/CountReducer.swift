import Foundation
import SwiftRex

extension Reducer where ActionType == CountAction, StateType == CountState {
    static let count = Reducer.reduce { action, state in
        switch action {
        case .decrement: state.currentValue -= 1
        case .increment: state.currentValue += 1
        }
    }
}
