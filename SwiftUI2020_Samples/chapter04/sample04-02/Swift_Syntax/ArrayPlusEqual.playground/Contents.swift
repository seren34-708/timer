import UIKit
// 初期化済みの空の配列を作る
var data = Array<Double>()
// 数値が入った配列
let data1 = [3.6, 5.7, 2.2]
let data2 = [4.0, 3.1, 5.3]
// 配列を連結する
data += data1
data += data2
// 小さな順に並べ替える（ソート）
data.sort()
// 値を確認する
print(data)
