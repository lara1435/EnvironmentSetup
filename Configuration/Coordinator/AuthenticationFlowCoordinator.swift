import Foundation
import UIKit

protocol AuthenticationFlowCoordinatorDelegate: class {
}

public final class AuthenticationFlowCoordinator: Coordinator {
    weak var delegate: AuthenticationFlowCoordinatorDelegate?
    let navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override public func start() {
        super.start()
        showLoginViewController()
    }
    
    func showLoginViewController() {
        let signInViewController = AuthenticationFactory.signInViewControllerWithCoordinator(coordinator: self)
        navigationController.show(signInViewController, sender: self)
    }
    
    func showSignupViewController(){
        let signupViewController = AuthenticationFactory.signUpViewControllerWithCoordinator(coordinator: self)
        navigationController.show(signupViewController, sender: self)
    }
    
    func showPasswordViewController() {
       let resetPasswordViewController = AuthenticationFactory.forgotPasswordViewControllerWithCoordinator(coordinator: self)
        navigationController.show(resetPasswordViewController, sender: self)
    }
}

extension AuthenticationFlowCoordinator: SignInViewControllerDelegate {
}

extension AuthenticationFlowCoordinator: SignUpViewControllerDelegate {
}

extension AuthenticationFlowCoordinator: ForgotPasswordViewControllerDelegate {
}
