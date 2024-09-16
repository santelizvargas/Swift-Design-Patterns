import Foundation

// MARK: - Singleton class

final class Singleton {
    /// Declare a static property 'shared' that holds a single instance of the Singleton class.
    static let shared: Singleton = .init()
    
    private(set) var someVar: String = "Initial Value"
    
    /// Define a private initializer to prevent external instantiation of the Singleton.
    private init() { }
    
    /// Define a function to mutate someVar value
    func updateVarValue(with newValue: String) {
        someVar = newValue
    }
}

// MARK: - Use

/// Create instances
let first = Singleton.shared
let second = Singleton.shared

/// Modify the 'someVar' property of the 'second' instance.
second.updateVarValue(with: "Hello World")

/// Print the value of 'someVar' property of the 'first' instance.
print("First var says: \(first.someVar)")
