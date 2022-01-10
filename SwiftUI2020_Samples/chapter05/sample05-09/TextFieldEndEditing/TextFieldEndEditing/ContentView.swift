//
//  ContentView.swift
//  TextFieldEndEditing
//
//  Created by yoshiyuki oshige on 2020/08/27.
//

import SwiftUI

extension UIApplication {
    // キーボードを下げる
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil
        )
    }
}

struct ContentView: View {
    @State var kosu:String = ""
    let tanka:Double = 250
    let tax:Double = 1.1

    var body: some View {
        ZStack {
            // 背景のタップでキーボードを下げる
            Color.white  // 背景を作る
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            
           VStack (alignment: .leading) {
                // 入力テキストフィールド
                HStack {
                    Text("個数：").padding(.horizontal, 0)
                    TextField("0", text: $kosu)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                }
                .font(.title)
                .frame(width: 300)
                
                // 計算結果の表示
                Group {
                    if kosuCheck(min: 1, max: 10) {
                        Text("\(price())円です。")
                            .font(.title)
                    } else {
                        Text("個数は1〜10個を入れてください。")
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                }.frame(width: 400, height: 30)
            }
        }
    }
    
    // 個数のチェック
    func kosuCheck(min:Int, max:Int) -> Bool {
        guard let num = Int(kosu) else {
            return false
        }
        // 範囲に入っていればtrue
        return (min...max).contains(num)
    }
    
    // 料金の計算
    func price() -> Int {
        // kosuを数値に変換できるときアンラップしてnumに代入
        if let num = Double(kosu) {
            let result = Int(tanka * num * tax)
            return result
        } else {
            return -1
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
