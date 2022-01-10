//
//  ContentView.swift
//  SheetDismissButton
//
//  Created by yoshiyuki oshige on 2020/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var isShow: Bool = false
    
    var body: some View {
        Button(action: {
            isShow = true
        }) {
            Text("シートを表示")
        }
        .sheet(isPresented: $isShow){
            SomeView(isPresented: $isShow)  // SomeViewビューを表示する
        }
    }
}

struct SomeView: View {
    // ContentViewビューの変数isShowとバインディングする
    @Binding var isPresented: Bool

    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "ladybug").scaleEffect(2.0)
                Text("ハロー").font(.title2).padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue: 0.8))
            .ignoresSafeArea() // ビュー領域全体を塗る
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // 閉じるボタン
                    Button {
                        isPresented = false
                    } label: {
                        Text("閉じる")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // SomeViewビューもプレビューする
        SomeView(isPresented: Binding.constant(false))
    }
}
