import Foundation

class AuthenticationFactory {
    static func signInViewControllerWithCoordinator(coordinator: SignInViewControllerDelegate) -> SignInViewController {
        let signInViewController = SignInViewController()
        signInViewController.delegate = coordinator
        return signInViewController
    }

    static func signUpViewControllerWithCoordinator(coordinator: SignUpViewControllerDelegate) -> SignUpViewController {
        let signupViewController = SignUpViewController()
        signupViewController.delegate = coordinator
        return signupViewController
    }
    
    static func forgotPasswordViewControllerWithCoordinator(coordinator: ForgotPasswordViewControllerDelegate) -> ForgotPasswordViewController {
        let forgotPasswordViewController = ForgotPasswordViewController()
        forgotPasswordViewController.delegate = coordinator
        return forgotPasswordViewController
    }
    
}
