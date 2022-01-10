//
//  ContentView.swift
//  DefineView
//
//  Created by yoshiyuki oshige on 2020/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Flower()
                .frame(height: 80)
            Hello()
                .font(.system(size: 40))
                .padding()
            Flower()
                .frame(height: 80)
        }
        .padding()
    }
}

// Helloビューの定義
struct Hello: View {
    var body: some View {
        Text("Hello World")
            .foregroundColor(.pink)
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
    }
}

// Flowerビューの定義
struct Flower: View {
    var body: some View {
        Image("flower")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
