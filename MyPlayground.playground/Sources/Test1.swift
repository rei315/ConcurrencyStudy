import UIKit

// MainActorの重複は順序を担保しない

public class ViewModel1 {
    public init(){}
    
    public func runTest() async {
        print("1")

        await MainActor.run {
            print("2")

            Task { @MainActor in
                print("3")
            }

            print("4")
        }
        
        await MainActor.run {
            print("6")
        }

        print("5")
    }
}


