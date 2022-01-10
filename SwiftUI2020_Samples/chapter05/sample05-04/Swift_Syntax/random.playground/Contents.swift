import UIKit

var kosu:Int
for _ in 1...3 {
    kosu = Int.random(in: 1...6)
    print("個数 \(kosu)")
}

var value:Double
for _ in 1...3 {
    value = Double.random(in: -1...1)
    print("値 \(value)")
}
