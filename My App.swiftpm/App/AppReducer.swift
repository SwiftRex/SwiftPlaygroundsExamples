import Foundation
import SwiftRex

extension Reducer where ActionType == AppAction, StateType == AppState {
    static let app =
    Reducer<CountAction, CountState>.count.lift(
        action: \AppAction.count, 
        state: \AppState.count
    ) <> 
    Reducer<AppAction, Date?>.changes.lift(
        state: \.lastChange
    )
}
