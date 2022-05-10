import Foundation

struct LaunchesDetailPresenter {
    let image : String
    let title : String
    let detail : String
    
    init(with model : LaunchesModel){
        self.image = model.links?.patch?.large ?? ""
        self.title = model.name ?? ""
        self.detail = model.details ?? ""
    }
}
