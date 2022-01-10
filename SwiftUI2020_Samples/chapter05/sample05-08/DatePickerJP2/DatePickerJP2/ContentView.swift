//
//  ContentView.swift
//  DatePickerJP2
//
//  Created by yoshiyuki oshige on 2020/08/24.
//

import SwiftUI

struct ContentView: View {
    @State var theDate = Date()
    
    var body: some View {
        DatePicker(selection: $theDate, label: { Text("日時") })
            .environment(\.locale, Locale(identifier: "ja_JP"))
            .environment(\.calendar, Calendar(identifier: .japanese))
            .frame(height: 50)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
