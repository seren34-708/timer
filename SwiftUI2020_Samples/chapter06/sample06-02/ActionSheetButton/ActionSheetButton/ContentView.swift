//
//  ContentView.swift
//  ActionSheetButton
//
//  Created by yoshiyuki oshige on 2020/09/07.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet:Bool = false
    
    var body: some View {
        Button(action: {
            isSheet = true
        }) {
            Text("Action Sheet テスト")
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("タイトル"),
                        message: Text("メッセージ文"),
                        buttons: [
                            .default(Text("ボタン1"), action: {}),
                            .default(Text("ボタン2"), action: {}),
                            .destructive(Text("削除"), action: {}),
                            .cancel(Text("キャンセル"), action: {})
                        ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
