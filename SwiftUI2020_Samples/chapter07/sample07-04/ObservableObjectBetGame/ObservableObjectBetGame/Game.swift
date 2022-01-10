//
//  Game.swift
//  ObservableObjectBetGame
//
//  Created by yoshiyuki oshige on 2020/09/27.
//

import Foundation
// Gameクラス
class Game: ObservableObject {
    // パブリッシュするプロパティ
    @Published var bet: String
    @Published var point: Int
    @Published var getPoint: Int
    
    // イニシャライザ
    init(bet:String = "", point:Int = 50, getPoint: Int = 0){
        self.bet = bet
        self.point = point
        self.getPoint = getPoint
    }
    
    // 賭けポイントのチェック
    func betCheck() {
        // 賭けポイントをIntに変換できないとき中断する
        guard var betPoint = Int(bet) else { return }
        // 賭けポイントの上限はpoint、最低は0
        betPoint = min(max(betPoint, 0), point)
        bet = String(betPoint)
    }
    
    // チャレンジ
    func challenge() {
        // 賭けポイントをIntに変換できないとき中断する
        guard let betPoint = Int(bet) else { return }
        // チャレンジ！
        let num = Int.random(in: -3...3)
        getPoint = betPoint * num
        point += getPoint
    }
    
    // 再チャレンジ（リスタート）
    func restart() {
        bet = ""
        point = 50
        getPoint = 0
    }
}
