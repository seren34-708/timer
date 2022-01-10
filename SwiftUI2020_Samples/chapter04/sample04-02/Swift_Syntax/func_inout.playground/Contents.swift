import UIKit

// 引数で渡された配列の要素に1を足す
func incrimentNums(nums:inout [Int]){
    for i in  0..<nums.count{
        nums[i] += 1
    }
}

// 元の配列
var data = [3, 5, 9]
print(data)
// 実行
incrimentNums(nums: &data)
// 実行後の配列
print(data)
