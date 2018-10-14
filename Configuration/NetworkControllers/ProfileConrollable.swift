import Foundation

protocol profileConrollable: class {
    func getUserProfile() -> Data
    func updateUserProfile(data: Data) -> Bool
}
