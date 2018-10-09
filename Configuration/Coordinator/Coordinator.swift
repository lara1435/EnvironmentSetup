import Foundation

public class Coordinator: NSObject, Coordinatable {
    override public init() {
        super.init()
    }
    
    private var children: [Coordinatable] = []
    public private(set) var hasStarted: Bool = false
    
    public var childCoordinators: [Coordinatable] {
        return children
    }
    
    public func add(childCoordinator coordinator: Coordinatable) {
        self.children.append(coordinator)
    }
    
    public func remove(childCoordinator coordinator: Coordinatable) {
        self.children = self.children.filter { $0 !== coordinator }
    }
    
    public func start() {
        if self.hasStarted == true {
            fatalError("This coordinator has already been started and it can be start once in his life time.")
        } else {
            self.hasStarted = true
        }
    }
}
