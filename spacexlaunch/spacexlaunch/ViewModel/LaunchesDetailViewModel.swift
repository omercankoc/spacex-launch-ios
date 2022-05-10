import Foundation

final class LaunchesDetailViewModel : ObservableObject {
    
    @Published var presenter : LaunchesDetailPresenter?
    
    init(){
        
    }
    
    init(with model : LaunchesModel){
        self.presenter = LaunchesDetailPresenter(with: model)
    }
}
