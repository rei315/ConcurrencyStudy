import Foundation

public class ViewModel3 {
    public init(){}
    
    public func hoge1() async -> Int{
        let result = await MainActor.run { () -> Int in
            print("This is on the main actor.")
            return 1
        }

        return result
    }
    
    public func hoge2() {
        Task {
            await MainActor.run {
                print("This is on the main actor.")
            }
        }
    }
}
