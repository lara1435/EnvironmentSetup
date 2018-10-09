import Foundation
import UIKit

enum AuthenticationIdentifiers {
    static let signIn = "SignInViewController"
    static let signUp = "SignUpViewController"
    static let forgotPassword = "ForgotPasswordViewController"
}

class AuthenticationFactory {
    var storyBoard: UIStoryboard {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Authentication", bundle: bundle)
        return storyboard
    }
    
    func signInViewControllerWithCoordinator(coordinator: SignInViewControllerDelegate) -> SignInViewController {
        let signInViewController = storyBoard.instantiateViewController(withIdentifier: AuthenticationIdentifiers.signIn) as! SignInViewController
        let viewModel = SignInViewModel()
        signInViewController.configure(viewModel: viewModel)
        signInViewController.delegate = coordinator
        return signInViewController
    }

    func signUpViewControllerWithCoordinator(coordinator: SignUpViewControllerDelegate) -> SignUpViewController {
        let signupViewController = storyBoard.instantiateViewController(withIdentifier: AuthenticationIdentifiers.signUp) as! SignUpViewController
        let viewModel = SignUpViewModel()
        signupViewController.configure(viewModel: viewModel)
        signupViewController.delegate = coordinator
        return signupViewController
    }
    
    func forgotPasswordViewControllerWithCoordinator(coordinator: ForgotPasswordViewControllerDelegate) -> ForgotPasswordViewController {
        let forgotPasswordViewController = storyBoard.instantiateViewController(withIdentifier: AuthenticationIdentifiers.forgotPassword) as! ForgotPasswordViewController
        let viewModel = ForgotPasswordViewModel()
        forgotPasswordViewController.configure(viewModel: viewModel)
        forgotPasswordViewController.delegate = coordinator
        return forgotPasswordViewController
    }
    
}
