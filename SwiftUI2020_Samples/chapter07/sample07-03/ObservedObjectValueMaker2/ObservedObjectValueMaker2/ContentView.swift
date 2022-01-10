//
//  ContentView.swift
//  ObservedObjectValueMaker2
//
//  Created by yoshiyuki oshige on 2020/09/28.
//

import SwiftUI

struct ContentView: View {
    // ValueMakerのインスタンスを作り観測する
    @ObservedObject var maker = ValueMaker()
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            ZStack {
                // 0.8より大きいとき赤で表示する
                Rectangle()
                    .fill((maker.value > 0.8) ? Color.red : Color.white)
                Text("\(maker.value)")
                    .font(.largeTitle)
                    .foregroundColor((maker.value > 0.8) ? .white : .gray)
            }
        }
        .frame(width: 200, height: 80)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
