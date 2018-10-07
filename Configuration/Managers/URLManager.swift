import Foundation

class URLManager {
    static let shared = URLManager()
    
    let endPoints: EndPoints
    
    init() {
        switch EnvironmentManager.shared.selectedEnvironment {
        case .develop:
            endPoints = DevEndPoints()
        case .inHouse:
            endPoints = InHouseEndPoints()
        case .appStore:
            endPoints = AppStoreEndPoints()
        case .none:
            endPoints = DevEndPoints()
        }
    }
}

extension URLManager {
    var baseURL: String {
        return endPoints.baseURL
    }
    
    var getCategoriesURL: String {
        return endPoints.categories
    }
}
