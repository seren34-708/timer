//
//  ContentView.swift
//  TextPlusText
//
//  Created by yoshiyuki oshige on 2020/08/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("No.").bold() + Text("123").font(.largeTitle).foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
