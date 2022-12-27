# Concurrency

- Asynchronous Function  - 一時中断される可能性があり、その間に他の非同期関数が該当スレッドで実行される可能性がある。
- Asynchronous Sequence - collectionのelementを一つずつ待つことができる。  with  for-await-loop
- Asynchronous Function in parallel - 順次進行するのではなく並列に作業を進めることができる。 with async-let
- Tasks and Task Groups - 非同期コードの優先順位、キャンセル処理についてより多くコントロールできる。
- Actor - mutable stateに安全にアクセスできる。
                                                                        
                                                                        
## Defining and Calling Asynchronous Functions
func hoge() async -> [String] {
    let result: String = await hoge1()
    return result
}

## Asynchronous Sequences
for try await value in values {
    print(value)
}
                                                                        
## Calling Asynchronous Functions in Parallel
let value1 = await hoge1()
let value2 = await hoge1()
let value3 = await hoge1()
let value4 = await hoge1()

## Tasks and Task Groups
await withTaskGroup(of: Data.self) { taskGroup in
    let values = await hoge()
    for value in values {
        taskGroup.addTask { await hoge2(named: value) }
    }
}


# Task

## 同じパータン１
Task {
}

Task.init {
}

Task.init() {
}

// deprecated
async {
}

// deprecated
async() {
}

## 同じパータン２
Task.detached {
}

Task.detached() {
}

// deprecated
Task.runDetached {
}

// deprecated
Task.runDetached() {
}

// deprecated
detach {
}

// deprecated
detach() {
}
