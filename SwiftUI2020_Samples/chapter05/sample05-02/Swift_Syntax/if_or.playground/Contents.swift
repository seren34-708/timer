import UIKit

func hantei(sugaku:Int, eigo:Int) -> String {
    var result = "数学：\(sugaku)、英語：\(eigo)"
    if (sugaku >= 80) || (eigo >= 80){
        result += " → 合格"
    } else {
        result += " → 不合格"
    }
    return result
}

let test1 = hantei(sugaku: 97, eigo: 68)
let test2 = hantei(sugaku: 81, eigo: 83)
let test3 = hantei(sugaku: 72, eigo: 65)
print(test1)
print(test2)
print(test3)

