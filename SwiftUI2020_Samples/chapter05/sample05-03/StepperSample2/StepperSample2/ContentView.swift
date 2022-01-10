//
//  ContentView.swift
//  StepperSample2
//
//  Created by yoshiyuki oshige on 2020/08/12.
//

import SwiftUI

struct ContentView: View {
    @State var kosu:Int = 0
    let tanka = 240
    let tax = 0.1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("5個ずつ30個まで、１個\(tanka)円")
                .font(.headline)
        
        Stepper(
            onIncrement: {
                kosu += 5
                kosu = min(kosu, 30) // 最大値
            },
            onDecrement: {
                kosu -= 5
                kosu = max(kosu, 0) // 最小値
            },
            label:  {Text("個数: \(kosu)")
        }
        ).frame(width: 200)

            Text("料金：\(calc(kosu)) 円 [税込み]")
                .underline()
        }
    }
        
    // 料金の計算
    func calc(_ num:Int) -> Int {
        let price = tanka * num
        let rersult = Double(price) * (1+tax)
        return Int(rersult)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
