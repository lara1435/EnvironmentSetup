import Foundation

protocol SignInViewModelDelegate: class {
}

class SignInViewModel: ViewModelable {
    weak var delegate: SignInViewModelDelegate?
    
    func viewDidLoad() {
        print("SignInViewModel did load")
    }
}
