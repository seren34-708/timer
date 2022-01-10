//
//  ContentView.swift
//  DividerSample
//
//  Created by yoshiyuki oshige on 2020/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.thin)
            Divider()
            Photo1().frame(height: 200).padding()
            Divider()
            Photo2().frame(height: 180).padding()
            Divider()
            Spacer()
        }
        .padding(.all, 10)
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
