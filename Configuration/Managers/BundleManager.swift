import Foundation

class BundleManager {
    static let shared = BundleManager()
    
    private init() {
    }
    
    lazy var identifier: String = {
        guard let infoDictionary = Bundle.main.infoDictionary,
              let bundleIdentifier = infoDictionary["CFBundleIdentifier"] as? String else {
            return ""
        }
        return bundleIdentifier
    }()
    
    lazy var versionNumber: String = {
        guard let infoDictionary = Bundle.main.infoDictionary,
              let versionNumber = infoDictionary["CFBundleShortVersionString"] as? String else {
                return ""
        }
        return versionNumber
    }()
    
    lazy var buildNumber: String = {
        guard let infoDictionary = Bundle.main.infoDictionary,
              let buildNumber = infoDictionary["CFBundleVersion"] as? String else {
                return ""
        }
        return buildNumber
    }()
}
