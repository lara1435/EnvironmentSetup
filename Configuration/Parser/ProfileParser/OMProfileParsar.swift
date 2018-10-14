import Foundation

class OMProfileParsar {
    
}

extension OMProfileParsar: ProfileParsable {
    func parseProfileData(_ data: Data) -> User {
        print("Used ObjectMapper to parse")
        let user = User(id: 1, name: "Bharani", age: 32, image: "image")
        return user
    }
}
