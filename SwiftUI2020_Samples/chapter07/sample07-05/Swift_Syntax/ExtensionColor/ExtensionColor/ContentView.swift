//
//  ContentView.swift
//  ExtensionColor
//
//  Created by yoshiyuki oshige on 2020/09/30.
//

import SwiftUI

extension Color {
    static var hagiiro: Color {
        return Color(red: 223/255, green: 87/255, blue: 143/255, opacity: 1.0)
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.hagiiro)
                .frame(width: 200, height: 200)
            Text("萩 色")
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
