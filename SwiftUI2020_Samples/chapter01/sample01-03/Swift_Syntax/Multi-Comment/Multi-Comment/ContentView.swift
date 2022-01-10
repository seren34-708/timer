//
//  ContentView.swift
//  Multi-Comment
//
//  Created by yoshiyuki oshige on 2020/07/11.
//

import SwiftUI

// １行のコメント
struct ContentView: View {
    var body: some View {  // 途中からのコメント
        Text("Hello, world!").padding()
    }
}

/*
 複数行の区間を囲んで、いっぺんにコメント文にすることができます
 コメント
 コメント
 コメント
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
