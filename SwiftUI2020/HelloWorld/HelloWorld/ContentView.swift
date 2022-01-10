//
//  ContentView.swift
//  HelloWorld
//
//  Created by matuda naoya on 2021/12/12.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
            let date = Date()
            Text(Date(), style: .time)
            NavigationView {
                Text(Date(), style: .date)
                NavigationLink(destination: SecondView()) {
                    Text("Go Second View").font(.title)
                }
                .navigationTitle("Top View")
                Text("aaa")
            }
        }
    }
}
        
struct SecondView: View {
    var body: some View {
        Text("SecondView").font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension DateFormatter {
    // テンプレートの定義(例)
    enum Template: String {
        case date = "yMd"     // 2017/1/1
        case time = "Hms"     // 12:39:22
        case full = "yMdkHms" // 2017/1/1 12:39:22
        case onlyHour = "k"   // 17時
        case era = "GG"       // "西暦" (default) or "平成" (本体設定で和暦を指定している場合)
        case weekDay = "EEEE" // 日曜日
    }

    func setTemplate(_ template: Template) {
        // optionsは拡張用の引数だが使用されていないため常に0
        dateFormat = DateFormatter.dateFormat(fromTemplate: template.rawValue, options: 0, locale: .current)
    }
}
