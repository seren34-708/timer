//
//  ContentView.swift
//  janken
//
//  Created by yoshiyuki oshige on 2020/08/10.
//

import SwiftUI

struct ContentView: View {
    let janken = ["グー", "チョキ", "パー"]
    @State var te = ""
    
    var body: some View {
        
        VStack {
            // ボタンを作る
            Button ("じゃんけん") {
                te = janken.randomElement()!
            }
            .foregroundColor(.white)
            .background(
                Capsule()
                    .foregroundColor(.blue)
                    .frame(width: 120, height: 40)
            )
            // 結果の表示
            Text(te)
                .font(.largeTitle)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
