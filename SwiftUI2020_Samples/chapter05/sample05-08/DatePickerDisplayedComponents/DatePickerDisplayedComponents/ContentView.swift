//
//  ContentView.swift
//  DatePickerDisplayedComponents
//
//  Created by yoshiyuki oshige on 2020/10/17.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // 日付ピッカー
            DatePicker("日付", selection: $theDate, displayedComponents: .date)
                .environment(\.locale, Locale(identifier: "ja_JP"))
                .frame(width: 200)
           // 時刻ピッカー
            DatePicker("時刻", selection: $theDate, displayedComponents: .hourAndMinute)
                .frame(width: 200)
            // ピッカーで選択している日時
            Text(theDate.description(with: Locale(identifier: "ja_JP")))
                .font(.footnote)
        }
        .padding()
        .border(Color.gray, width: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
