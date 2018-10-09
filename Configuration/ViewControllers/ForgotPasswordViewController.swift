import UIKit

protocol ForgotPasswordViewControllerDelegate: class {
}

class ForgotPasswordViewController: UIViewController {
    weak var delegate: ForgotPasswordViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
