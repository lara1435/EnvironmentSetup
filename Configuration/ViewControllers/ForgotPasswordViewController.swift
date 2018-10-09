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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(RouteManager.shared.appCoordinator)
        print(RouteManager.shared.appCoordinator.childCoordinators)
    }
}

extension ForgotPasswordViewController: ForgotPasswordViewModelDelegate {
}
