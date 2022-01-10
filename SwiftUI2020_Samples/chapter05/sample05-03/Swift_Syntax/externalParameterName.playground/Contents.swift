import UIKit

let tanka = 240

// 外部引数名なし
func calcA(num:Int) -> Int {
    let price = tanka * num
    return price
}

// 外部引数名 kosu
func calcB(kosu num:Int) -> Int {
    let price = tanka * num
    return price
}

// 外部引数名 _
func calcC(_ num:Int) -> Int {
    let price = tanka * num
    return price
}

// 関数を実行する
let priceA = calcA(num: 2)
let priceB = calcB(kosu: 2)
let priceC = calcC(2)
