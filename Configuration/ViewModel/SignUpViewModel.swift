import Foundation

protocol SignUpViewModelDelegate: class {
}

class SignUpViewModel: ViewModelable {
    weak var delegate: SignUpViewModelDelegate?
    
    func viewDidLoad() {
        print("SignUpViewModel did load")
    }
}
