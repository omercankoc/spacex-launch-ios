import SwiftUI

struct LaunchesView: View {
    
    @ObservedObject var viewModel : LaunchesViewModel = LaunchesViewModel()
    @ObservedObject var upcomingViewModel : LauncheUpcomingViewModel = LauncheUpcomingViewModel()
    
    var body: some View {
        VStack {
             /*TabView {
                ForEach(0..<5){ num in
                    Image("\(num)")
                        .resizable()
                        .scaledToFit()
                        .tag(num)
                }
             }.tabViewStyle(PageTabViewStyle())
                .padding()
            .frame(height: 200) */
            
            NavigationView {
                ZStack {
                    List(self.viewModel.presenters) { item in
                        LaunchesCellView(presenter: item).onTapGesture(perform : {
                            self.viewModel.itemSelected(at: item)
                        })
                    }.onAppear(perform : {
                        self.viewModel.onAppear()
                    })
                    NavigationLink(
                        destination : LaunchesDetailView(viewModel: self.viewModel.selectedViewModel),
                        isActive : self.$viewModel.navigateToDetail,
                        label: {
                            EmptyView()
                        }
                    )
                }.navigationBarTitle("All Launches",displayMode: .large)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesView()
    }
}
