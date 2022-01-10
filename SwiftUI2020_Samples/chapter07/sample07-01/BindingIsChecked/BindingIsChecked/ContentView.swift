//
//  ContentView.swift
//  BindingIsChecked
//
//  Created by yoshiyuki oshige on 2020/09/19.
//

import SwiftUI

struct ContentView: View {
    // チェック状態を保存（PersonCheckMarkビューのisCheckedとバインディングする）
    @State var isChecked_person1: Bool = false

    var body: some View {
        HStack {
            Text("担当者1のチェック").padding(.horizontal, 10)
            // PersonCheckMarkビューを作る
            PersonCheckMark(isChecked: $isChecked_person1)
        }
    }
}

struct PersonCheckMark: View {
    // ContentViewビューの変数とバインディングする変数
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            // isCheckedのtrue/falseを反転する
            isChecked.toggle()
        }) {
            // isCheckedがtrueかfalsedかでイメージと色を選ぶ
            Image(systemName: isChecked ? "person.crop.circle.badge.checkmark" :  "person.crop.circle")
                .foregroundColor(isChecked ? .blue : .gray)
        }
        .scaleEffect(CGSize(width: 2.0, height: 2.0))
        .frame(width: 50, height:50, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
