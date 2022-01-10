import UIKit

// 構造体を定義する
struct Member {
    let name:String
    var level = 1
    var age:Int
}

// 構造体を作る
var member1 = Member(name: "鈴木", age: 19)
var member2 = Member(name: "田中", level: 5, age: 23)

// member1の値を調べる
let text1 = "\(member1.name)さん \(member1.age)歳 レベル\(member1.level)"
print(text1)

// member2のlevelに1を足す
member2.level += 1
// member2の値を調べる
let text2 = "\(member2.name)さん \(member2.age)歳 レベル\(member2.level)"
print(text2)

