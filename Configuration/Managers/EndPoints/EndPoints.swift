protocol EndPoints {
    var baseURL: String { get set }
}

extension EndPoints {
    var categories: String {
        return "\(baseURL)/categories"
    }
}

