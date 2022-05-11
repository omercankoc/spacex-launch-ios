import Foundation
import Combine

final class LauncheUpcomingViewModel : NSObject, ObservableObject {
    private var task : Cancellable? = nil
    @Published var presenters : [LaunchesUpcomingPresenter] = []
    
    func onAppear(){
        self.task = Service.standart.get(path: .launchesUpcoming, responseType: [LaunchesModel].self)
            .map{$0.map{LaunchesUpcomingPresenter(with: $0)}}
            .sink(receiveCompletion: {_ in}, receiveValue: { [weak self] presenters in
                self?.presenters = presenters
            })
    }
}
