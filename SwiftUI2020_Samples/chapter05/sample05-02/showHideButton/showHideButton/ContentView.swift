//
//  ContentView.swift
//  showHideButton
//
//  Created by yoshiyuki oshige on 2020/08/13.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = true
    @State var opaValue = 1.0
    @State var btnText = "消す"
    
    var body: some View {
        VStack {
            Button(action: {
                isShow.toggle()
                btnText = isShow ? "消す" : "表示する"
                withAnimation(.easeInOut(duration: 2)) {
                    opaValue = isShow ? 1.0 : 0.0
                }
               })
            {
                // ボタン名
                Text(btnText).font(.title2)
            }
            // 写真
            Image("eigakan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .opacity(opaValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
