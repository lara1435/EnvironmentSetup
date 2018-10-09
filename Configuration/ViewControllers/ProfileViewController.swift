import UIKit

protocol ProfileViewControllerDelegate: class {
}

class ProfileViewController: UIViewController {
    weak var delegate: ProfileViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
