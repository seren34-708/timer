import UIKit

// 半径
var radius = 10.0
// 直径
var diameter:Double {
    // 半径から直径を計算して返す
    get {
        radius * 2
    }
    // 直径から半径を計算してセットする
    set (length){
        radius = length / 2
    }
}
// 円周の長さ
var around:Double {
    // 半径から円周を計算して返す
    get {
       radius * 2 * Double.pi
    }
    // 円周から半径を計算してセットする
    set (length) {
        radius = length / (2 * Double.pi)
    }
}

print("半径が \(radius) のとき直径の長さは、\(diameter)")
// 直径を30にする
diameter = 30
print("直径が \(diameter) の円の半径は、\(radius)")
// 円周を100にする
around = 100
print("円周の長さが \(around) の円の半径は、\(radius)")



