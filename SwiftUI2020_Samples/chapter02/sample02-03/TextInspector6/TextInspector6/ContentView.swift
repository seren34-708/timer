//
//  ContentView.swift
//  TextInspector6
//
//  Created by yoshiyuki oshige on 2020/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("The quick brown fox \n jumps over \n the lazy dog.")
            .frame(width: 300, height: 200, alignment: .bottomTrailing)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
