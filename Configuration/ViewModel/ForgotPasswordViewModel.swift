import Foundation

protocol ForgotPasswordViewModelDelegate: class {
}

class ForgotPasswordViewModel: ViewModelable {
    weak var delegate: ForgotPasswordViewModelDelegate?
    
    func viewDidLoad() {
        print("ForgotPasswordViewModel did load")
    }
}

