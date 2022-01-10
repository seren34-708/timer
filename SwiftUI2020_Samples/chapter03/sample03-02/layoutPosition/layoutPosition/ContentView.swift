//
//  ContentView.swift
//  layoutPosition
//
//  Created by yoshiyuki oshige on 2020/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: 100, height: 100)
                .position(x: 120, y: 150)
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .position(x: 300, y: 350)
        }
//        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
