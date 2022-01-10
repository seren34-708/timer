import UIKit

var ans: Int
ans = max(5, 9)  // 9
ans = min(5, 9)  // 5

var v1 = -10, v2 = 20
v1 = min(max(v1, 0), 10) // 0
v2 = min(max(v2, 0), 10) // 10

let nums = [4,2,6,8,5]
ans = nums.max()!  // 8
ans = nums.min()!  // 2
