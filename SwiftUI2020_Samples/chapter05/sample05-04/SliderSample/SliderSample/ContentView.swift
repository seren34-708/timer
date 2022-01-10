//
//  ContentView.swift
//  SliderSample
//
//  Created by yoshiyuki oshige on 2020/08/13.
//

import SwiftUI

struct ContentView: View {
    @State var volume: Double = 0.0
    
    var body: some View {
        HStack {
//          Text("\(volume)").frame(width: 100)
            Text("\(format(volume))").frame(width: 100)
            HStack {
                Image(systemName: "speaker.slash").imageScale(.large)
                Slider(value: $volume)
                Image(systemName: "speaker.3").imageScale(.large)
            }
            .frame(width: 200)
        }
    }
}

// 小数点以下を２桁にする
func format(_ num:Double) -> String {
    let result = String(round(num*100)/100)
    return result
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
