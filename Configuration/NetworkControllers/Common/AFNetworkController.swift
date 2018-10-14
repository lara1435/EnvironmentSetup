import UIKit

class AFNetworkController {
    
}

extension AFNetworkController: NetworkControllable {
    func downloadPostURL() -> Data {
        return Data()
    }
    
    func downloadPutURL() -> Data {
        return Data()
    }
    
    func downloadGetURL() -> Data  {
        print("Used AFNetwork for networking")
        return Data()
    }
}
