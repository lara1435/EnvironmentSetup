import UIKit

protocol SignInViewControllerDelegate: class {
}

class SignInViewController: UIViewController {
    weak var delegate: SignInViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
