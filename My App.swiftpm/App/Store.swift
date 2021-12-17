import CombineRex
import Foundation

class Store: ReduxStoreBase<AppAction, AppState> {
    init(world: World) {
        super.init(
            subject: .combine(initialValue: .empty), 
            reducer: .app, 
            middleware: ComposedMiddleware.app(world: world)
        )
    }
    
}
