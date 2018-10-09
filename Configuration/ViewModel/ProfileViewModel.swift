import Foundation

protocol ProfileViewModelDelegate: class {
}

class ProfileViewModel: ViewModelable {
    weak var delegate: ProfileViewModelDelegate?
    
    func viewDidLoad() {
        print("ProfileViewModel did load")
    }
}
