import Foundation

enum AppAction {
    case changed(Date)
    case count(CountAction)
}

extension AppAction {
    var changed: Date? {
        if case let .changed(date) = self { return date }
        return nil
    }
    
    var count: CountAction? {
        if case let .count(value) = self { return value }
        return nil
    }
}
