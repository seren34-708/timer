import UIKit

// 空っぽの配列から最後の要素を取り出す
//let nums:[Int] = []
//let lastNum = nums.last
//let ans = lastNum * 2

// 変数にnilを代入するとエラーになる
//var num:Int
//num =  5  // 代入できる
//num = nil  // nilは代入できずエラーになる

// nilを代入できる変数を作る
//var num:Int?
//num = nil
//num = 5
//print(num)  // Optional(5)

// オプショナルバリューはそのまま使えない
//let nums:[Int] = [1, 2, 3]
//let lastNum = nums.last
//let ans = lastNum * 2

// lastNumの中身を調べてみる
//let nums:[Int] = [1, 2, 3]
//let lastNum = nums.last
//print(lastNum)  // Optional(3)

// オプショナルバリューを強制アンラップする
//var num:Int?
//num = 5
//print(num)  // Optional(5)
//print(num!) // 強制アンラップする


// オプショナルバリューを強制アンラップして計算する
//let nums:[Int] = [1, 2, 3]
//let lastNum = nums.last!
//let ans = lastNum * 2
//print(ans) // 6


// nilだった場合は0を使う
//let nums:[Int] = []
//let lastNum = nums.last ?? 0
//let ans = lastNum * 2
//print(ans)
