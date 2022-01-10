//
//  ContentView.swift
//  ThankYouButton
//
//  Created by yoshiyuki oshige on 2020/08/06.
//

import SwiftUI

struct ContentView: View {
    @State var msg = "Thank you!"
    var body: some View {
        VStack {
            Button("Tap") {
                msg = "ありがとう！"
            }
            .font(.headline)
            .foregroundColor(.white)
            .background(
                Capsule() // カプセルの形
                    .foregroundColor(.green)
                    .frame(width:80, height:30)
            )
            // 結果の表示
            Text(msg).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
