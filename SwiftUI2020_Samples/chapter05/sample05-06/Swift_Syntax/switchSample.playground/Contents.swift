import UIKit

func fortune(color: String) {
    switch color {
        case "red", "yellow":
            print("\(color)は、当たり")
        case "green":
            print("\(color)は、大当たり")
        default:
            print("\(color)は、ハズレ")
    }
}

fortune(color: "yellow")
fortune(color: "blue")
fortune(color: "green")
fortune(color: "red")
