import Foundation

public func run(description: String, action: () -> Void) {
    print("=== Run: \(description) ===")
    action()
    print()
}
