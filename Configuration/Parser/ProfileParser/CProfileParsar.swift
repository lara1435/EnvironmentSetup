import Foundation

class CProfileParsar {
    
}

extension CProfileParsar: ProfileParsable {
    func parseProfileData(_ data: Data) -> User {
        print("Used Codable protocol to parse")
        let user = User(id: 1, name: "Bharani", age: 32, image: "image")
        return user
    }
}
