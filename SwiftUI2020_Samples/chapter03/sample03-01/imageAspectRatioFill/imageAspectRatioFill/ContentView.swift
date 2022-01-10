//
//  ContentView.swift
//  imageAspectRatioFill
//
//  Created by yoshiyuki oshige on 2020/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("seaSky")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                .clipped()
            Text("Hello, World!").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
