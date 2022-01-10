//
//  ContentView.swift
//  AlertDeleteCancelButton
//
//  Created by yoshiyuki oshige on 2020/09/07.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            // エラーだったらtrueにする
            self.isError = true
        }) {
         Text("Alertテスト")
        }.alert(isPresented: $isError) {
            Alert(title: Text("タイトル"),
                  message: Text("確認メッセージ"),
                  primaryButton: .destructive(Text("削除する"), action: {}),
                  secondaryButton: .cancel(Text("キャンセル"), action: {}))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
