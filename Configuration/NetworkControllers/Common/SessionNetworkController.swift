import UIKit

class SessionNetworkController {

}

extension SessionNetworkController: NetworkControllable {
    func downloadPostURL() -> Data {
        return Data()
    }
    
    func downloadPutURL() -> Data {
        return Data()
    }
    
    func downloadGetURL() -> Data  {
        print("Used URLsession for networking")
        return Data()
    }
}
