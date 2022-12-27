import Foundation

public actor ViewModel4 {
    public init(){}
    
    public var values: [Int] = []

    public func update(with value: Int) {
        values.append(value)
    }
}
