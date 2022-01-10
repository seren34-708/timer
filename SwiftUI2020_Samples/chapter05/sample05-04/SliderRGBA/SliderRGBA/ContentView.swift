//
//  ContentView.swift
//  SliderRGBA
//
//  Created by yoshiyuki oshige on 2020/08/13.
//

import SwiftUI

struct ContentView: View {
    @State var R:Double = 0
    @State var G:Double = 0
    @State var B:Double = 0
    @State var A:Double = 1
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack{
                // 下に隠れているイメージ
                Image(systemName: "ladybug")
                    .scaleEffect(3)
                // 色を付ける円
                Circle()
                 .frame(width:100, height:100)
                 .padding()
                 .foregroundColor(
                     Color(red: R/255, green: G/255, blue: B/255, opacity: A))
            }
           // redのスライダー
            HStack{
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 20)
                Text(String(Int(R))).frame(width: 40)
                Slider(value: $R, in: 0...255).frame(width: 200)
            }
            // greenのスライダー
            HStack{
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 20, height: 20)
                Text(String(Int(G))).frame(width: 40)
                Slider(value: $G, in: 0...255).frame(width: 200)
            }
            // blueのスライダー
            HStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text(String(Int(B))).frame(width: 40)
                Slider(value: $B, in: 0...255).frame(width: 200)
            }
            // opacityのスライダー
            HStack{
                Rectangle()
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
                    .frame(width: 18, height: 18)
                Text(String(round(A*10)/10)).frame(width: 40)
                Slider(value: $A).frame(width: 200)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
