import Foundation
import UIKit

class RouteManager {
    static let shared: RouteManager = RouteManager()
    
    let baseCoordinator: AppCoordinator
    
    private init() {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        baseCoordinator = delegate.appCoordinator!
    }
    
    var appCoordinator: AppCoordinator {
        return self.baseCoordinator
    }
}
