//
//  ContentView.swift
//  ObservableObjectBetGame
//
//  Created by yoshiyuki oshige on 2020/09/27.
//

import SwiftUI

struct ContentView: View {
    // 観測するオブジェクト
    @ObservedObject var player = Game()   // playerインスタンスを生成する
    
    var body: some View {
        VStack(alignment:.leading, spacing:15) {
            Text("現在のポイント：") +
                Text("\(player.point)")
                .font(.title)
                .foregroundColor(player.point>0 ? .black : .red)
            // GameViewビューを表示する
            GameView(player: player) // 共有するplayerインスタンスを渡す
        }
        .frame(width: 250)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
