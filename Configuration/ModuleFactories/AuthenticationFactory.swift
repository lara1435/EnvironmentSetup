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
    
    static func forgotPasswordViewControllerWithCoordinator(coordinator: ResetPasswordViewControllerDelegate) -> ForgotPasswordViewController {
        let resetPasswordViewController = ForgotPasswordViewController()
        resetPasswordViewController.delegate = coordinator
        return resetPasswordViewController
    }
    
}
