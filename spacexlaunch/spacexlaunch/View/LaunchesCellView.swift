import SwiftUI
import Kingfisher

struct LaunchesCellView: View {
    
    private var presenter : LaunchesPresenter!
    
    init(presenter : LaunchesPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        HStack(alignment: .top){
            KFImage(URL(string: self.presenter.image))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
                .padding()
            VStack(alignment : .leading  ,spacing : 16){
                Text(self.presenter.name)
                    .bold()
                    .font(.headline)
                    .frame(height: 75)
                    .multilineTextAlignment(.leading)
                Text(self.presenter.date)
                    .frame(height: 75)
                    .font(.body)
                    .multilineTextAlignment(.trailing)
            }
        }
    }
}
