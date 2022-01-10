import UIKit

struct Robbot {
    var num = 0
    mutating func update() {
        num = Int.random(in: 0 ... 100)
    }
}
var roboSora = Robbot()
roboSora.update()
print(roboSora.num)
