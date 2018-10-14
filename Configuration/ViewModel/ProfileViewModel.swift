import Foundation

protocol ProfileViewModelDelegate: class {
    func showUserName()
    func showUserAge()
}

class ProfileViewModel: ViewModelable {
    weak var delegate: ProfileViewModelDelegate?
    var networkController: profileConrollable
    var parser: ProfileParsable
    var user: User?
    
    init(networkController: profileConrollable, parser: ProfileParsable) {
        self.networkController = networkController
        self.parser = parser
    }
    
    func viewDidLoad() {
        print("ProfileViewModel did load")
        loadUser()
    }
}

extension ProfileViewModel {
    func loadUser() {
        let data = networkController.getUserProfile()
        user = parser.parseProfileData(data)
        delegate?.showUserName()
        delegate?.showUserAge()
    }
}
