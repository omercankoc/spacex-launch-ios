import SwiftUI
import Kingfisher

struct LaunchesDetailView: View {
    
    @ObservedObject var viewModel : LaunchesDetailViewModel = LaunchesDetailViewModel()
    
    var body: some View {
        VStack{
            KFImage(URL(string: self.viewModel.presenter?.image ?? ""))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: 256, height: 256, alignment: .leading)
                .padding()
            Text(self.viewModel.presenter?.title ?? "")
                .bold()
                .frame(alignment: .center)
                .font(.headline)
                .padding()
            Text(self.viewModel.presenter?.detail ?? "")
                .frame(alignment: .center).padding()
                .font(.body)
                .padding()
            Text(self.viewModel.presenter?.date ?? "")
                .frame(alignment: .center)
                .font(.body)
                .padding()
        }
    }
}

struct LaunchesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchesDetailView()
    }
}
