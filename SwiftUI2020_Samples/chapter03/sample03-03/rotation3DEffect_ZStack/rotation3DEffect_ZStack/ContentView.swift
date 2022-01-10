//
//  ContentView.swift
//  rotation3DEffect_ZStack
//
//  Created by yoshiyuki oshige on 2020/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            Image("seaSky")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(x: -70, y: 0)
                .frame(width: 250, height:400)
                .clipped()
            
            Text("ほととぎす\n鳴きつる方をながむれば\nただ有明の月ぞ残れる\n")
                .fontWeight(.light)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .offset(x: 0, y: -5)
                .frame(width: 250, height:400)
        }
        .rotation3DEffect(.degrees(45), axis: (x:1, y:0, z:0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
