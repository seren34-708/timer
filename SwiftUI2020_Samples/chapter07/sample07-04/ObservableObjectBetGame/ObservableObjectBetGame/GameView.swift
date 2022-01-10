//
//  GameView.swift
//  ObservableObjectBetGame
//
//  Created by yoshiyuki oshige on 2020/09/28.
//

import SwiftUI

// GameViewビュー
struct GameView: View {
    // 観測するオブジェクト
    @ObservedObject var player: Game
    
    var body: some View {
        // インスタンスのプロパティを変更する
        VStack(alignment:.leading, spacing:15) {
            TextField("賭けポイント", text: $player.bet)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .onChange(of: player.bet, perform: { value in
                    player.betCheck()
                })
            Text("獲得ポイント：") +
                Text("\(player.getPoint)").font(.title)
            // ポイントが正のときにチャレンジできる
            if player.point>0 {
                Button("チャレンジ！"){
                    player.challenge()
                } .padding()
            } else {
                Text("マイナスです！！").foregroundColor(.red)
                Button("[ 再チャレンジする ]"){
                    player.restart()
                } .foregroundColor(.red).padding()
            }
        }.padding()
    }
}

// pointが正の場合と負の場合のプレビューを表示する
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameView(player: Game(bet: "30", point: 100))
            GameView(player: Game(bet: "", point: -20))
        }.previewLayout(.fixed(width: 250, height: 200))
    }
}
