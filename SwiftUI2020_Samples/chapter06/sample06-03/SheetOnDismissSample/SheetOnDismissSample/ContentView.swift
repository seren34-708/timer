//
//  ContentView.swift
//  SheetOnDismissSample
//
//  Created by yoshiyuki oshige on 2020/09/09.
//

import SwiftUI

struct ContentView: View {
    @State var isModal: Bool = false
    @State var counter:Int = 0
    
    
    var body: some View {
        VStack {
            Button(action: {
                isModal = true
            }) {
                Text("Sheetテスト")
            }
            .sheet(isPresented: $isModal, onDismiss: {countUp()}){
                SomeView()
            }
            .disabled(counter >= 3) // 3回表示したらボタンを無効にする
            
            Text("回数：\(counter)")
                .font(.title)
                .padding()
        }
    }
    // ハーフモーダルビューが閉じたタイミングで実行される
    func countUp(){
        counter += 1
    }
}

struct SomeView: View {
    var body: some View {
        VStack {
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SomeView()
    }
}
