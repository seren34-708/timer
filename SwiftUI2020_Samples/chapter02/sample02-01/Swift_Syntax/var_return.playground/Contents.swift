import UIKit

var num:Int {
    let result = 2 * 5
    return result
}

print(num)


var num2:Int {
    2 * 5
}

print(num2)


var num3:Int {
    get {
        2 * 5
    }
}

print(num3)
