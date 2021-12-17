import Foundation

enum ContentViewAction {
    case tapPlus, tapMinus
    var toAppAction: AppAction? {
        switch self {
        case .tapMinus: return .count(.decrement)
        case .tapPlus: return .count(.increment)
        }
    }
}
