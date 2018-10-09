import UIKit

protocol SignUpViewControllerDelegate: class {
}

class SignUpViewController: UIViewController {
    weak var delegate: SignUpViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
