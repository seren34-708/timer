//
//  ContentView.swift
//  ActionSheetButton2
//
//  Created by yoshiyuki oshige on 2020/09/08.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet: Bool = false

    var body: some View {
        Button(action: {
            isSheet = true
        }) {
            Text("Action Sheetテスト")
        }.actionSheet(isPresented: $isSheet, content: {
            ActionSheet(title: Text("タイトル"),
                message: Text("メッセージ文"),
                buttons: [
                     .default(Text("ボタン１"), action: {}),
                     .default(Text("ボタン２"), action: {}),
                     .destructive(Text("削除"), action: {}),
                     .cancel(Text("キャンセル"), action: {})
                ])
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
