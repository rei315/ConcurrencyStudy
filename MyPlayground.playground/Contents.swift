import Foundation

// TEST 1
Task {
    let viewModel = ViewModel1()
    await viewModel.runTest()
}


// TEST 3
let viewModel3 = ViewModel3()
Task {
    let result = await viewModel3.hoge1()
    
    viewModel3.hoge2()
}

// TEST 4
let viewModel4 = ViewModel4()
Task.detached {
    await viewModel4.update(with: 100) // nonisolated追加することでawaitなしでも呼ばれる
    print(await viewModel4.values.count)
}
Task.detached {
    await viewModel4.update(with: 110)
    print(await viewModel4.values.count)
}
