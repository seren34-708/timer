//
//  ContentView.swift
//  overlayText
//
//  Created by yoshiyuki oshige on 2020/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("seaSky")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 400)
            .clipped()
            .overlay(
                Text("Hello World")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .offset(x: 0, y: -50)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
