import UIKit

for x in 0 ..< 360*2 {
    let radian = Double(x) * Double.pi/180
    let y = sin(radian)
    print(x, y)
}
