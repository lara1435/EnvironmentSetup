import Foundation

class ProfileFactory {
    static func profileViewControllerWithCoordinator(coordinator: ProfileViewControllerDelegate) -> ProfileViewController {
        let profileViewController = ProfileViewController()
        profileViewController.delegate = coordinator
        return profileViewController
    }
}
