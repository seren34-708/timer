import UIKit
// 初期化済みの空の配列を作る
var members = [String]()
// 要素を追加する
members.append("秀樹")
members.append("浩二")
members.append(contentsOf: ["裕樹", "義郎", "昌教"])
// 値を確認する
print(members)

