//
//  ContentView.swift
//  shadowText
//
//  Created by yoshiyuki oshige on 2020/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("春はあけぼの。やうやう白くなり行く、山ぎは少しあかりて、紫だちたる雲の細くたなびきたる。")
            .fontWeight(.light)
            .font(.title)
            .frame(width: 240)
            .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
