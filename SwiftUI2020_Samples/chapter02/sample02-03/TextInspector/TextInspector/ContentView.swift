//
//  ContentView.swift
//  TextInspector
//
//  Created by yoshiyuki oshige on 2020/07/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Bicycle for the Mind").font(.title).fontWeight(.thin).padding()
            Text("知性の自転車")
                .foregroundColor(Color.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
