import Foundation

struct LaunchesPresenter : Identifiable {
    let id = UUID()
    let image : String
    let name : String
    let date : String
    
    init(with model: LaunchesModel){
        self.name = model.name ?? ""
        self.image = model.links?.patch?.small ?? ""
        
        if let date = model.date {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.mm.yyyy"
            self.date = dateFormatter.string(from: date)
        } else {
            self.date = ""
        }
    }
}
