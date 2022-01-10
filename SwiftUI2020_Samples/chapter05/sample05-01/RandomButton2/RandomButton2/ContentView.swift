//
//  ContentView.swift
//  RandomButton2
//
//  Created by yoshiyuki oshige on 2020/08/06.
//

import SwiftUI

struct ContentView: View {
    // 構造体の自身が書き替える変数
    @State var num:Int = 0
    
    var body: some View {
        VStack{
            Button(action: {
                num = Int.random(in: 0...100)
//                print(num) // Debug Preview
            }) {
                Text("Random Button")
                    .font(.largeTitle)
                    .frame(width: 280, height: 60, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(15, antialiased: true) // 最後に実行
            }
            // 結果を表示するテキスト
            Text("\(num)")
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
