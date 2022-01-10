import UIKit

// 引数を使った関数
func calc(aduld:Int, child:Int) -> Int {
    let money = aduld * 1200 + child * 500
    return money
}

let price = calc(aduld: 3, child: 2)
print(price)

// 引数に初期値がある関数
func calc2(aduld:Int = 0, child:Int = 0) -> Int {
    let money = aduld * 1200 + child * 500
    return money
}

let adult1 = calc2(aduld: 1)
let child2 = calc2(child: 2)
print("大人１人 \(adult1)")
print("子供２人 \(child2)")

var isPlay = false
// 値を返さない関数
func play() -> Void {
    isPlay = true
}

play()
print(isPlay)
