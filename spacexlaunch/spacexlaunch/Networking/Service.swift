import Foundation
import Alamofire
import Combine

final class Service {
    private let baseURL : String = "https://api.spacexdata.com/v4/launches/latest"
    private let standart : Service = Service()
    
    func get<T:Decodable>(path : Endpoint, responseType : T.Type) -> AnyPublisher<T, ServiceError> {
        AF.request(self.baseURL + path.rawValue, method: .get)
            .publishDecodable(type : responseType)
            .value()
            .mapError(ServiceError.init(error:))
            .eraseToAnyPublisher()
    }
}
