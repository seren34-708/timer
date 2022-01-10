//
//  ContentView.swift
//  DatePickerDateFormat
//
//  Created by yoshiyuki oshige on 2020/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()

    // 日付表示の書式
    var dateFormat: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
//        df.calendar = Calendar(identifier: .japanese)
        df.dateStyle = .full
        df.timeStyle = .short
        return df
    }
    
    var dateFormat2: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.calendar = Calendar(identifier: .japanese)
        df.dateFormat = "令和yy(YYYY)年M月dd日(E)HH時mm分 "
        return df
    }
    
    var body: some View {
        VStack {
            // 日付表示
            Text(dateFormat.string(from: theDate))
            Text(dateFormat2.string(from: theDate))
            // デートピッカー
            DatePicker(selection: $theDate, label: { EmptyView() })
                .environment(\.locale, Locale(identifier: "ja_JP"))
                .frame(width:200, height: 40)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
