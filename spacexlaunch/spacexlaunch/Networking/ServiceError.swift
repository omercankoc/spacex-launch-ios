import Foundation
import Alamofire

enum ServiceError : Error {
    case network
    init(error : AFError){
        self = .network
    }
}
