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
            dateFormatter.dateFormat = "yyyy-mm-dd"
            self.date = dateFormatter.string(from: date)
        } else {
            self.date = ""
        }
    }
}
