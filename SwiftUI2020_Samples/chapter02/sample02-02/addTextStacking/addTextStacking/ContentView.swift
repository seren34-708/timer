//
//  ContentView.swift
//  addTextStacking
//
//  Created by yoshiyuki oshige on 2020/07/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Hello, world!").padding()
                Text("Placeholder")
            }
            HStack {
                Text("Placeholder")
                Text("Placeholder")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
