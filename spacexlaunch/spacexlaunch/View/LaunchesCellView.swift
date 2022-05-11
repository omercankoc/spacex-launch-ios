import SwiftUI
import Kingfisher

struct LaunchesCellView: View {
    
    private var presenter : LaunchesPresenter!
    
    init(presenter : LaunchesPresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            KFImage(URL(string: self.presenter.image))
                .cancelOnDisappear(true)
                .resizable()
                .frame(width: 128, height: 128)
            VStack(alignment : .leading  ,spacing : 16){
                Text(self.presenter.name)
                    .bold()
                Text(self.presenter.date)
            }
        }
    }
}
