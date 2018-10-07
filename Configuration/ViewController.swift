import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("identifer: \(BundleManager.shared.identifier)")
        print("selectedEnvironment: \(EnvironmentManager.shared.selectedEnvironment)")
        
        print("versionNumber: \(BundleManager.shared.versionNumber)")
        print("buildNumber: \(BundleManager.shared.buildNumber)")
        
        print("baseURL: \(URLManager.shared.baseURL)")
        print("getCategoriesURL: \(URLManager.shared.getCategoriesURL)")
    }
}
