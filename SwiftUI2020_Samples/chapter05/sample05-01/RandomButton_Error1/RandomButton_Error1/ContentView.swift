//
//  ContentView.swift
//  RandomButton_Error1
//
//  Created by yoshiyuki oshige on 2020/08/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button(action: {
                let num = Int.random(in: 0...100)
            }) {
                Text("Random Button")
            }
            Text("\(num)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
