//
//  ContentView.swift
//  AlertOKCancelButton
//
//  Created by yoshiyuki oshige on 2020/09/06.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    
    var body: some View {
        Button(action: {
            // エラーが発生したらtrueにする
            self.isError = true
        }) {
         Text("Alertテスト")
       }.alert(isPresented: $isError) {
        Alert(title: Text("タイトル"), message: Text("メッセージ文"),
              primaryButton: .default(Text("OK"), action: {
                okAction()
              }),
              secondaryButton: .cancel(Text("キャンセル"), action:{})
        )}
    }
}

func okAction(){
    
}

func cancelAction(){
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
