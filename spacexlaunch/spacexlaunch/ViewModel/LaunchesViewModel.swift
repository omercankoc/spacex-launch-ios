import Foundation
import Combine

final class LaunchesViewModel : NSObject, ObservableObject {
    
    private var task : Cancellable? = nil
    private var launches : [LaunchesModel] = []
    @Published var presenters : [LaunchesPresenter] = []
    @Published var selectedViewModel : LaunchesDetailViewModel = LaunchesDetailViewModel()
    @Published var navigateToDetail : Bool = false
    
    func onAppear(){
        self.task = Service.standart.get(path: .launches  , responseType: [LaunchesModel].self)
            .map { [weak self] in
                self?.launches = $0
                return $0.map{LaunchesPresenter(with: $0)}}
            .sink(receiveCompletion: {_ in}, receiveValue: {[weak self] presenters in
                self?.presenters = presenters
            })
    }
    
    func itemSelected(at item : LaunchesPresenter){
        guard let index = self.presenters.firstIndex(where: {$0.id == item.id}) else {
            return
        }
        self.selectedViewModel = LaunchesDetailViewModel(with: self.launches[index])
        self.navigateToDetail = true
    }
}
