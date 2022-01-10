//
//  ContentView.swift
//  ContentList
//
//  Created by yoshiyuki oshige on 2020/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Content 1")
            Text("Content 2")
            Photo1().frame(height: 150)
            Text("Content 4")
            Photo2().frame(height: 150)
            Text("Content 6")
        }
    }
}

// 写真１
struct Photo1: View {
    var body: some View {
        HStack {
            Image("bus")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("えぼし号")
                .padding(.horizontal)
        }
    }
}

// 写真２
struct Photo2: View {
    var body: some View {
        HStack {
            Image("lighthouse")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("白灯台")
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
