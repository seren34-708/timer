//
//  ContentView.swift
//  Inherited
//
//  Created by yoshiyuki oshige on 2020/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("春はあけぼの")
            Text("夏は夜")
                .foregroundColor(.red)
            Text("秋は夕暮")
            Text("冬はつとめて")
        }
        .font(.title)
        .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
