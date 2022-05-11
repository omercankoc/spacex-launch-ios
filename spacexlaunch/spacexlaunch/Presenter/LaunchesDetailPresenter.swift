import Foundation

struct LaunchesDetailPresenter {
    let image : String
    let title : String
    let detail : String
    let date : String
    
    init(with model : LaunchesModel){
        self.image = model.links?.patch?.large ?? ""
        self.title = model.name ?? ""
        self.detail = model.details ?? ""
        
        if let date = model.date {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.mm.yyyy"
            self.date = dateFormatter.string(from: date)
        } else {
            self.date = ""
        }
    }
}
