//
//  ContentView.swift
//  ImageSystemName
//
//  Created by yoshiyuki oshige on 2020/08/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "sun.max")
            Image(systemName: "cloud.rain")
            Image(systemName: "camera")
            Image(systemName: "message")
            Image(systemName: "a.circle")
            Image(systemName: "calendar")
            Image(systemName: "star.fill")
                .frame(width: 34, height: 34)
                .foregroundColor(Color.yellow)
                .background(Color.green)
                .clipShape(Circle())
        }
        .imageScale(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
