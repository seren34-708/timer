import UIKit

print("-- Int.random(in:)")

for _ in 1 ... 5 {
    let num = Int.random(in: 1 ... 10)
    print(num)
}

print("\n-- Double.random(in:)")

for _ in 1 ... 5 {
    let num = Double.random(in: 0 ..< 1)
    print(num)
}

print("\n-- Bool.random()")

for _ in 1 ... 5 {
    let value = Bool.random()
    print(value)
}

print("\n-- randomElement()")

let colors = ["green", "red", "blue", "pink", "orange"]
for _ in 1 ... 5 {
    let item = colors.randomElement()
    print(item!)
}


print("-")


let letters = "ABCDEFGHIJKLMN"
for _ in 1 ... 5 {
    let item = letters.randomElement()
    print(item!)
}

