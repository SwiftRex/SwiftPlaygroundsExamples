import CombineRextensions
import SwiftUI

@main
struct MyApp: App {
    private static let world: World = .production
    
    @ObservedObject private var store = Store(world: world).asObservableViewModel(initialState: .empty)
    
    var body: some Scene {
        WindowGroup {
            ViewProducer.main(store: store).view()
        }
    }
}
