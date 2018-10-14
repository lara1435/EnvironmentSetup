import Foundation

protocol ProfileParsable: class {
    func parseProfileData(_ data: Data) -> User
}
