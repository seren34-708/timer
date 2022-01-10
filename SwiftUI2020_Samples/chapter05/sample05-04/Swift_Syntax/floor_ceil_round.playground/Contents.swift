import UIKit

let price = 3520 * 1.24  // 4364.8
var ans:Double
ans = floor(price)  // 4364.0
ans = ceil(price)  // 4365.0
ans = round(price)  // 4365.0


ans = floor(price/10)*10  // 4360.0
ans = ceil(price/10)*10  // 4370.0
ans = round(price/10)*10  // 4360.0


ans = round(1.5)
ans = round(2.5)
ans = round(3.5)
