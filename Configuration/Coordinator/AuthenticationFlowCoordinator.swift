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
        
        let tag = 2
        
        switch tag {
        case 0:
            showSigInViewController()
        case 1:
            showSignUpViewController()
        case 2:
            showPasswordViewController()
        default:
            showSigInViewController()
        }
        
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
}

extension AuthenticationFlowCoordinator: SignUpViewControllerDelegate {
}

extension AuthenticationFlowCoordinator: ForgotPasswordViewControllerDelegate {
}
