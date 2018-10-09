import Foundation
import UIKit

protocol ProfileFlowCoordinatorDelegate: class {
}

public final class ProfileFlowCoordinator: Coordinator {
    weak var delegate: ProfileFlowCoordinatorDelegate?
    let navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override public func start() {
        super.start()
        showProfileViewController()
    }
    
    func showProfileViewController() {
        let profileViewController = ProfileFactory.profileViewControllerWithCoordinator(coordinator: self)
        navigationController.show(profileViewController, sender: self)
    }
}

extension ProfileFlowCoordinator: ProfileViewControllerDelegate {
}
