import Foundation
import UIKit

protocol ProfileFlowCoordinatorDelegate: class {
}

public final class ProfileFlowCoordinator: Coordinator {
    weak var delegate: ProfileFlowCoordinatorDelegate?
    let navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
}
