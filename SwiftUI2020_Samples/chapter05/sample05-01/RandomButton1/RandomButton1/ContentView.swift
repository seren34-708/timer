//
//  ContentView.swift
//  RandomButton1
//
//  Created by yoshiyuki oshige on 2020/08/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            let num = Int.random(in: 0...100)
            print(num) // Debug Preview
        }) {
            Text("Random Button")
                .font(.largeTitle)
                .frame(width: 280, height: 60, alignment: .center)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(15, antialiased: true) // 最後に実行
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
