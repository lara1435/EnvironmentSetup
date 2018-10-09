import UIKit

protocol ForgotPasswordViewControllerDelegate: class {
}

class ForgotPasswordViewController: UIViewController {
    weak var delegate: ForgotPasswordViewControllerDelegate?
    private var viewModel: ForgotPasswordViewModel?
    
    func configure(viewModel: ForgotPasswordViewModel) {
        self.viewModel = viewModel
        self.viewModel?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.viewDidLoad()
    }
}

extension ForgotPasswordViewController: ForgotPasswordViewModelDelegate {
}
