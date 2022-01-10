//
//  SettingView.swift
//  EnvironmentObjectSample
//
//  Created by yoshiyuki oshige on 2019/11/11.
//  Copyright © 2019 yoshiyuki oshige. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    // 共有オブジェクトを指定する
    @EnvironmentObject var setData: ShareData
    // シートが開いている状態
    @Binding var isPresented: Bool
     
     var body: some View {
        NavigationView {
            VStack {
                // スイッチ
                Toggle(isOn: $setData.isOn) {
                    Text("設定 : \(setData.isOn ? "ON" : "OFF")")
                }.frame(width:250)
                // ステッパー（★の個数）
                Stepper(value: $setData.num, in: 1...5) {
                    Text("★ ：\(setData.num)")
                }.frame(width:250)
            }
            .font(.title2)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue: 0.5))
            .ignoresSafeArea() // ビュー領域全体を塗る
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    // 閉じるボタン
                    Button("閉じる"){
                        isPresented = false
                    }
                }
            }
        }
     }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(isPresented: Binding.constant(false))
        .environmentObject(ShareData()) // プレビュー用
    }
}
