//
//  ContentView.swift
//  drawCapsule
//
//  Created by yoshiyuki oshige on 2020/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Capsule()
            .foregroundColor(.blue)
            .frame(width: 250, height: 100)
//            .frame(width: 100, height: 250)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
