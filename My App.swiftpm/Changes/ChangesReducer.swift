import Foundation
import SwiftRex

extension Reducer where ActionType == AppAction, StateType == Date? {
    static let changes = Reducer.reduce { action, state in
        switch action {
        case let .changed(date): state = date
        case .count: break
        }
    }
}
