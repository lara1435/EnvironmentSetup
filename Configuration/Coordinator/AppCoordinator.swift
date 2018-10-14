import Foundation
import UIKit

public class AppCoordinator: Coordinator {
    fileprivate var isLoggedIn = true
    fileprivate let navigationController:UINavigationController
    
    init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override public func start() {
        super.start()
        
        if isLoggedIn {
            showProfile()
        } else {
            showAuthentication()
        }
    }
    
    fileprivate func showProfile() {
        let profileFlowCoordinator = ProfileFlowCoordinator(navigationController: navigationController)
        profileFlowCoordinator.delegate = self
        profileFlowCoordinator.start()
        self.add(childCoordinator: profileFlowCoordinator)
    }
    
    fileprivate func showAuthentication() {
        let authenticationFlowCoordinator = AuthenticationFlowCoordinator(navigationController: navigationController)
        authenticationFlowCoordinator.delegate = self
        authenticationFlowCoordinator.start()
        self.add(childCoordinator: authenticationFlowCoordinator)
    }
}

extension AppCoordinator : AuthenticationFlowCoordinatorDelegate {
}

extension AppCoordinator : ProfileFlowCoordinatorDelegate {
}
