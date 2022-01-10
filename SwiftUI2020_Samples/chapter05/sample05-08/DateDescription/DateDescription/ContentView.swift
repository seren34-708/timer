//
//  ContentView.swift
//  DateDescription
//
//  Created by yoshiyuki oshige on 2020/08/24.
//

import SwiftUI

struct ContentView: View {
   let theDate = Date() // 実行時のタイム
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(theDate)")
            Text(theDate.description).padding(.vertical) // UTC
            Text(theDate.description(with: Locale(identifier: "ja_JP")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
