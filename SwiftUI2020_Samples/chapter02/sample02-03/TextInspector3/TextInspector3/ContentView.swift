//
//  ContentView.swift
//  TextInspector3
//
//  Created by yoshiyuki oshige on 2020/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("The quick brown fox jumps over the lazy dog.")
            .font(.largeTitle)
            .multilineTextAlignment(.trailing)
            .frame(width: 200.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
