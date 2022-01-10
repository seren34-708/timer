//
//  ContentView.swift
//  DatePickerCloseRange
//
//  Created by yoshiyuki oshige on 2020/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    // 選択できる日付の範囲
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let max = Calendar.current.date(byAdding: .month, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        DatePicker(selection: $theDate,
                   in: dateClosedRange,
                   label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .frame(height: 50)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
