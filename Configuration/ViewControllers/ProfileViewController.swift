import UIKit

protocol ProfileViewControllerDelegate: class {
}

class ProfileViewController: UIViewController {
    weak var delegate: ProfileViewControllerDelegate?
    private var viewModel: ProfileViewModel?
    
    func configure(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        self.viewModel?.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.viewDidLoad()
    }
}

extension ProfileViewController: ProfileViewModelDelegate {
}
