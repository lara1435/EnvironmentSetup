import Foundation
import UIKit

enum ProfileIdentifiers {
    static let profile = "ProfileViewController"
}

class ProfileFactory {
    var storyBoard: UIStoryboard {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Profile", bundle: bundle)
        return storyboard
    }
    
    func profileViewControllerWithCoordinator(coordinator: ProfileViewControllerDelegate) -> ProfileViewController {
        let profileViewController = storyBoard.instantiateViewController(withIdentifier: ProfileIdentifiers.profile) as! ProfileViewController
        let viewModel = ProfileViewModel()
        profileViewController.configure(viewModel: viewModel)
        profileViewController.delegate = coordinator
        return profileViewController
    }
}
