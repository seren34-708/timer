//
//  ContentView.swift
//  StackAlignment
//
//  Created by yoshiyuki oshige on 2020/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15.0) {
            Text("春はあけぼの")
            Text("夏は夜")
            Text("秋は夕暮")
            Text("冬はつとめて")
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
