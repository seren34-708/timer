//
//  ContentView.swift
//  AlertOKButton
//
//  Created by yoshiyuki oshige on 2020/09/06.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            isError = true
        }) {
            Text("Alertテスト")
        }.alert(isPresented: $isError) {
            Alert(title: Text("タイトル"), message: Text("メッセージ文"), dismissButton: .default(Text("OK"), action: {}))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


