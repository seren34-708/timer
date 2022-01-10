//
//  ContentView.swift
//  addImage
//
//  Created by yoshiyuki oshige on 2020/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("seaSky")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Hello, world!").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
