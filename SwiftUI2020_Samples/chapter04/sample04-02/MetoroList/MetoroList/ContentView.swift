//
//  ContentView.swift
//  MetoroList
//
//  Created by yoshiyuki oshige on 2020/07/27.
//

import SwiftUI

let metro = ["銀座線", "丸ノ内線", "日比谷線", "東西線", "千代田線", "半蔵門線", "南北線", "副都心線"]

struct ContentView: View {
    var body: some View {
        List(0 ..< metro.count) { item in
            HStack {
                Text(String(item))
                Text(metro[item])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
