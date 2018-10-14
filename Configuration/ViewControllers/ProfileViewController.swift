import UIKit

protocol ProfileViewControllerDelegate: class {
}

class ProfileViewController: UIViewController {
    weak var delegate: ProfileViewControllerDelegate?
    private var viewModel: ProfileViewModel?
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userAgeLabel: UILabel!
    
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
    func showUserName() {
        userNameLabel.text = viewModel?.user?.name
    }
    
    func showUserAge() {
        userAgeLabel.text = "Age: \(viewModel?.user?.age ?? 0)"
    }
}
