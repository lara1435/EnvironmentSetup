import UIKit

protocol SignInViewControllerDelegate: class {
    func signUpButtonDidTap()
    func forgotPasswordButtonDidTap()
}

class SignInViewController: UIViewController {
    weak var delegate: SignInViewControllerDelegate?
    private var viewModel: SignInViewModel?
    
    func configure(viewModel: SignInViewModel) {
        self.viewModel = viewModel
        self.viewModel?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.viewDidLoad()
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
        delegate?.signUpButtonDidTap()
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: Any) {
        delegate?.forgotPasswordButtonDidTap()
    }
}

extension SignInViewController: SignInViewModelDelegate {
}
