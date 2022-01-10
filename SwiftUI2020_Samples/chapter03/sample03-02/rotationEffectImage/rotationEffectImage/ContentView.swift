//
//  ContentView.swift
//  rotationEffectImage
//
//  Created by yoshiyuki oshige on 2020/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("seaSky")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 400)
            .clipped()
            .rotationEffect(.degrees(10), anchor: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
