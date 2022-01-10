import UIKit

// ストリングリテラル
let hello = "ハロー"

let message = """
iOSアプリはSwiftで作ります。
空を素早く飛び回る"アマツバメ"です。
"""

// 文字列の連結
let name = "高橋"
let who = name + "さん"

var stars = ""
stars += "★"
stars += "☆"
stars += "★"

// 数値や式から文字列を作る
let tanka = 240
let kosu = 3
let kingaku = String(tanka * kosu) + "円です"

// 文字列に変数を埋め込む

let time = 9.95
let result = "タイムは\(time)秒でした。"

