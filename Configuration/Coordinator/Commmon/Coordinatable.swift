public protocol Coordinatable: class {
    
    // MARK:- properties
    
    var childCoordinators: [Coordinatable] { get }
    
    // MARK:- methods
    
    func add(childCoordinator coordinator: Coordinatable)
    func remove(childCoordinator coordinator: Coordinatable)
    
    func start()
}
