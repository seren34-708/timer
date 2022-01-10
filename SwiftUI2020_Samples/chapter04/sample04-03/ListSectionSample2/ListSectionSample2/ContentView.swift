//
//  ContentView.swift
//  ListSectionSample2
//
//  Created by yoshiyuki oshige on 2020/07/29.
//

import SwiftUI

struct ContentView: View {
    let shikoku = ["徳島県", "香川県", "愛媛県", "高知県"]
    let kyusyu = ["福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県"]
    
    var body: some View {
        
        List {
            Section(header: Text("四国").font(.largeTitle).padding(.top),
                    footer: Text("最高標高は石鎚山の1,982m")) {
                ForEach(0..<shikoku.count) { index in
                    Text(shikoku[index])
                }
            }
 
            Section(header: Text("九州").font(.largeTitle).padding(.top),
                    footer: Text("最高標高は宮之浦岳の1,936m")) {
                ForEach(0..<kyusyu.count) { index in
                    Text(kyusyu[index])
                }
            }
        }
        .listStyle(GroupedListStyle())
//        .listStyle(PlainListStyle()) //デフォルト
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
