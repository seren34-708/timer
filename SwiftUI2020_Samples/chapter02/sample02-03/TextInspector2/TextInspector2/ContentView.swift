//
//  ContentView.swift
//  TextInspector2
//
//  Created by yoshiyuki oshige on 2020/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("春はあけぼの。やうやう白くなり行く、山ぎは少しあかりて、紫だちたる雲の細くたなびきたる。")
            .lineLimit(2)
            .frame(width: 200.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
