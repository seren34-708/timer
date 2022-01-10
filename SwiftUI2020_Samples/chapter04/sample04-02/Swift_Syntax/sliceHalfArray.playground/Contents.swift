import UIKit

let names = ["鈴木", "松原", "曽根", "安藤", "山田", "山本"]
let half = names.count/2
let group1 = names[..<half]
let group2 = names[half...]
print(group1)
print(group2)
