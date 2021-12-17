import Combine
import CombineRex
import Foundation

struct ReportChangesDependencies {
    let date: () -> Date
}

extension EffectMiddleware
where InputActionType == OutputActionType, InputActionType == AppAction, StateType == Void, Dependencies == ReportChangesDependencies {
    static let reportChanges = EffectMiddleware.onAction { action, _, _ in
        switch action {
        case .count: return Effect { context in 
            Just(DispatchedAction(.changed(context.dependencies.date()))) 
        }
        case .changed: return .doNothing
        }
    }
}
