import CombineRex
import Foundation
import LoggerMiddleware

extension ComposedMiddleware 
where InputActionType == AppAction, OutputActionType == AppAction, StateType == AppState {
    static func app(world: World) -> ComposedMiddleware {
        EffectMiddleware
            .reportChanges
            .lift(state: ignore)
            .contramapDependecies(ReportChangesDependencies.init)
            .contramapDependecies(\.date)
            .inject(world)
        
        <> LoggerMiddleware.default(
            actionPrinter: .osLog,
            stateDiffPrinter: .osLog,
            queue: .global(qos: .utility)
        ).lift(outputAction: absurd)
    }
}
