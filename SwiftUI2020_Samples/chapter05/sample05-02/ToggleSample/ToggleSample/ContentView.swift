//
//  ContentView.swift
//  ToggleSample
//
//  Created by yoshiyuki oshige on 2020/08/11.
//

import SwiftUI

struct ContentView: View {
    @State var iLike = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $iLike) {
                Text("Like or Not")
                    .font(.largeTitle)
            }
            .fixedSize()
            .padding(50)
            
            // 選んだ結果で分岐する
            if iLike {
                Image(systemName: "heart.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart.slash")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
