import SwiftUI
import Kingfisher

struct LaunchesDetailView: View {
    
    @ObservedObject var viewModel : LaunchesDetailViewModel = LaunchesDetailViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 16){
            KFImage(URL(string: self.viewModel.presenter?.image ?? ""))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: 256, height: 256)
            Text(self.viewModel.presenter?.title ?? "")
            Text(self.viewModel.presenter?.detail ?? "")
        }
    }
}

struct LaunchesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesDetailView()
    }
}
