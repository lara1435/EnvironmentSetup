import Foundation

protocol NetworkControllable: class {
    func downloadGetURL() -> Data
    func downloadPostURL() -> Data
    func downloadPutURL() -> Data
}
