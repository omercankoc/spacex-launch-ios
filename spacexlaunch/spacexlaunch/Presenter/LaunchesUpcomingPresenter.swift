import Foundation

struct LaunchesUpcomingPresenter : Identifiable {
    let id = UUID()
    let name : String
    let image : String
    
    init(with model : LaunchesModel){
        self.name = model.name ?? ""
        self.image = model.links?.patch?.large ?? ""
    }
}
