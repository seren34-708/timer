//
//  ContentView.swift
//  LinkURLSample
//
//  Created by yoshiyuki oshige on 2020/10/08.
//

import SwiftUI

// Webデータの構造体
struct webData: Identifiable{
    var id = UUID()
    var name:String
    var url:String
    var favicon:String
}

struct ContentView: View {
    // Webデータのリストを作る
    let webList = [
        webData(name: "アップル",
                 url: "https://www.apple.com/jp/", favicon: "apple"),
        webData(name: "東京国立博物館",
                 url: "https://www.tnm.jp", favicon: "tnm"),
        webData(name: "東京都現代美術館",
                 url: "https://www.mot-art-museum.jp", favicon: "mo"),
        webData(name: "川崎水族館",
                 url: "https://kawa-sui.com", favicon: "kawa-sui")
    ]
  
    var body: some View {
        NavigationView {
            List(webList) { item in
                // ファビコン
                Image(item.favicon)
                    .resizable().frame(width:40, height:40)
                // リンクを作る
                Link(item.name, destination: URL(string: item.url)!)
            }
            .navigationBarTitle("Webリスト")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
