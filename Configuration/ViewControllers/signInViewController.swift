import UIKit

protocol SignInViewControllerDelegate: class {
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
}

extension SignInViewController: SignInViewModelDelegate {
}
