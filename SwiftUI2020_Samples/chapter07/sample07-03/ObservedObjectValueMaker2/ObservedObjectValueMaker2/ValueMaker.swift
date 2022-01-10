//
//  ValueMaker.swift
//  ObservedObjectValueMaker2
//
//  Created by yoshiyuki oshige on 2020/09/24.
//

import Foundation

class ValueMaker: ObservableObject {
    // 値の更新をパブリッシュする変数にする
    @Published var value: Double
    private var timer: Timer
    // イニシャライザ
    init() {
        value = 0.0
        timer = Timer() // タイマーを作る
        start() // スタート
    }
    // タイマーをスタート
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            // valueに乱数をセットする
            self.value = Double.random(in: 0 ... 1)
        }
    }
}
