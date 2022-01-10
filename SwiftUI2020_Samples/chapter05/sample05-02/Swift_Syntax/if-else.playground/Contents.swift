import UIKit

func hantei(tokuten : Int) -> String {
    var result = "結果：\(tokuten)"
    if (tokuten >= 80) {
        result += " → 合格"
    } else {
        result += " → 不合格"
    }
    return result
}

let test1 = hantei(tokuten: 67)
let test2 = hantei(tokuten: 82)
let test3 = hantei(tokuten: 56)
print(test1)
print(test2)
print(test3)
