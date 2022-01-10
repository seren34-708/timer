//
//  ContentView.swift
//  SimpleButton
//
//  Created by yoshiyuki oshige on 2020/08/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {print("Hello World")}) {
            Text("Tap")
                .font(.largeTitle)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
