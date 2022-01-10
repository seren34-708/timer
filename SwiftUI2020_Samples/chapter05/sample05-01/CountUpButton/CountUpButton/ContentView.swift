//
//  ContentView.swift
//  CountUpButton
//
//  Created by yoshiyuki oshige on 2020/08/06.
//

import SwiftUI

struct ContentView: View {
    @State var num:Int = 0
    
    var body: some View {
        HStack {
            // 数値の表示
            Text("\(num)")
                .font(.system(size: 50))
                .frame(width: 90)
            // カウントアップ
            Button(action: { num += 1 }, label: {
                Text("Tap").font(.largeTitle)
            })
        }
        .frame(width: 200, height: 80, alignment: .center)
        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
