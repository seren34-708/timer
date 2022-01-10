//
//  ContentView.swift
//  drawEllipse
//
//  Created by yoshiyuki oshige on 2020/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Ellipse()
            .foregroundColor(.blue)
            .frame(width: 200, height: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
