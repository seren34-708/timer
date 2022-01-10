//
//  ContentView.swift
//  ListTitleI-inline
//
//  Created by yoshiyuki oshige on 2020/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Content 1")
                Text("Content 2")
                Text("Content 3")
                Text("Content 4")
            }
            .navigationTitle("タイトル")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
