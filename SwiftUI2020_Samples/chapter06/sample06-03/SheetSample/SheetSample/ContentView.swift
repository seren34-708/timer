//
//  ContentView.swift
//  SheetSample
//
//  Created by yoshiyuki oshige on 2020/09/09.
//

import SwiftUI

struct ContentView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        Button(action: {
            isModal = true
        }) {
            Text("Sheetテスト")
        }.sheet(isPresented: $isModal) {
            SomeView()
        }
    }
}

// SomeViewビューを作る
struct SomeView: View {
    var body: some View {
        VStack {
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large)
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SomeView()  // SomeViewビューのプレビューを追加
    }
}
