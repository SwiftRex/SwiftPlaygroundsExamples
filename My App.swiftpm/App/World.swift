import Foundation

struct World { 
    let date: () -> Date
}

extension World {
    static let production = World(
        date: Date.init
    )
}
