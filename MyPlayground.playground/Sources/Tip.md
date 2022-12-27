# Concurrency Tips

## SWIFT_STRICT_CONCURRENCY を Completeにする
Build Settings → strict concurrencyと検索すると出る"Strict Conccurrency Checking"をCompleteにすると、全てのコードが制約を守っているのかを確認する
Targetは"Sendable"と"actor-isolation"だけ確認する
Minimalは明白な"Sendable"のみ確認する


## Main Thread Checker
Build Scheme → TargetのDiagnotics　→ Main Thread Checker
