//
//  ContentView.swift
//  SimpleToggle
//
//  Created by yoshiyuki oshige on 2020/08/11.
//

import SwiftUI

struct ContentView: View {
    @State var isFast = true
    
    var body: some View {
       HStack {
            Button(action: {
                withAnimation {
                    isFast.toggle()
                }
            }){
                // ボタン名の変更
                Text(isFast ? "RUN" : "STOP")
                    .font(.title)
                    .foregroundColor(isFast ? .red : .black)
                    .padding(.trailing)
                    .frame(width:100)
                // イメージの変更
                Image(systemName: isFast ? "hare" : "tortoise")
                    .foregroundColor(isFast ? .blue : .green)
                    .rotationEffect(.degrees(isFast ? 0 : 180))
                    .scaleEffect(3)
                    .frame(width:100)
            }.frame(width:240, height: 70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
