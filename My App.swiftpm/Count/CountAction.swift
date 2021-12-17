import SwiftUI

enum CountAction {
    case increment
    case decrement
}

extension CountAction {
    var increment: Void? { 
        if case .increment = self { return () }
        return nil 
    }
    
    var decrement: Void? {
        if case .decrement = self { return () }
        return nil
    }
}
