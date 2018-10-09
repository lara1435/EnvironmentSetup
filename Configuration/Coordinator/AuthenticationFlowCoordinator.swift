import Foundation
import UIKit

protocol AuthenticationFlowCoordinatorDelegate: class {
}

public final class AuthenticationFlowCoordinator: Coordinator {
    weak var delegate: AuthenticationFlowCoordinatorDelegate?
    let navigationController: UINavigationController
    let authenticationFactory = AuthenticationFactory()
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override public func start() {
        super.start()
        showSigInViewController()
    }
    
    func showSigInViewController() {
        let signInViewController = authenticationFactory.signInViewControllerWithCoordinator(coordinator: self)
        navigationController.show(signInViewController, sender: self)
    }
    
    func showSignUpViewController(){
        let signupViewController = authenticationFactory.signUpViewControllerWithCoordinator(coordinator: self)
        navigationController.show(signupViewController, sender: self)
    }
    
    func showPasswordViewController() {
       let forgotPasswordViewController = authenticationFactory.forgotPasswordViewControllerWithCoordinator(coordinator: self)
        navigationController.show(forgotPasswordViewController, sender: self)
    }
}

extension AuthenticationFlowCoordinator: SignInViewControllerDelegate {
    func signUpButtonDidTap() {
        showSignUpViewController()
    }
    
    func forgotPasswordButtonDidTap() {
        showPasswordViewController()
    }
}

extension AuthenticationFlowCoordinator: SignUpViewControllerDelegate {
}

extension AuthenticationFlowCoordinator: ForgotPasswordViewControllerDelegate {
}
