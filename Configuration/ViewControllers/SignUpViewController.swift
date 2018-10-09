import UIKit

protocol SignUpViewControllerDelegate: class {
}

class SignUpViewController: UIViewController {
    weak var delegate: SignUpViewControllerDelegate?
    private var viewModel: SignUpViewModel?
    
    func configure(viewModel: SignUpViewModel) {
        self.viewModel = viewModel
        self.viewModel?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.viewDidLoad()
    }
}

extension SignUpViewController: SignUpViewModelDelegate {
}
