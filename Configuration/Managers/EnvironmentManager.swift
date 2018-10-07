import Foundation

enum Environment {
    case develop
    case inHouse
    case appStore
    case none
}

class EnvironmentManager {
    static let shared = EnvironmentManager()
    
    var selectedEnvironment: Environment
    
    private init() {
        #if Develop
        selectedEnvironment = .develop
        #elseif AppStore
        selectedEnvironment = .appStore
        #elseif InHouse
        selectedEnvironment = .inHouse
        #else
        selectedEnvironment = .none
        #endif
    }
}
