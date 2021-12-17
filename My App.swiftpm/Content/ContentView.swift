import CombineRex
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ObservableViewModel<ContentViewAction, ContentViewState>
    var body: some View {
        VStack {
            Text("Counter")
                .font(.title)
            
            HStack {
                Spacer()
                Button("-") { viewModel.dispatch(.tapMinus) }
                Spacer()
                Text(viewModel.state.number)
                Text(viewModel.state.date)
                Spacer()
                Button("+") { viewModel.dispatch(.tapPlus) }
                Spacer()
            }
        }
    }
}
