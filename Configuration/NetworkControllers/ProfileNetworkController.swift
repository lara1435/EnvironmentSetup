import Foundation

class ProfileNetworkController: NSObject {
    let networkController: NetworkControllable
    
    init(networkController: NetworkControllable) {
        self.networkController = networkController
    }
}

extension ProfileNetworkController: profileConrollable {
    func updateUserProfile(data: Data) -> Bool {
        return true
    }
    
    func getUserProfile() -> Data {
        let userData = networkController.downloadGetURL()
        return userData
    }
}
