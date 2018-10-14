import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
//        print(EnvironmentManager.shared.selectedEnvironment)
//        print(BundleManager.shared.identifier)
//        print(BundleManager.shared.buildNumber)
//        print(URLManager.shared.baseURL)
//        print(URLManager.shared.getCategoriesURL)
        
        window?.rootViewController = UINavigationController()
        appCoordinator = AppCoordinator(with: window?.rootViewController as! UINavigationController)
        appCoordinator?.start()
        
        window?.makeKeyAndVisible()
        return true
    }
}

