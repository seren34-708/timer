//
//  ContentView.swift
//  ObservedObjectSample
//
//  Created by yoshiyuki oshige on 2020/09/27.
//

import SwiftUI

// Userクラス
class User: ObservableObject {
    // 変更をパブリッシュするプロパティ
    @Published var name = ""
    @Published var tall = ""
}

// tallからサイズを選んで返す
func fitSize(tall:String) -> String {
    // tallを数値に変換できない場合は "？？？"を返して中断
    guard let height = Double(tall) else {
        return "？？？"
    }
    // tallを数値化した値heightで場合分けする
    switch height {
    case 145..<155 :
        return "Sサイズです"
    case 155..<176 :
        return "Mサイズです"
    case 176..<185 :
        return "Lサイズです"
    default:
        return "適したサイズがありません"
    }
}

struct ContentView: View {
    // 観測するオブジェクト
    @ObservedObject var user = User()   // インスタンスを生成
    
    var body: some View {
        VStack(alignment:.leading, spacing:15) {
            // インスタンスのプロパティを変更する
            Group {
                TextField("名前", text: $user.name)
                TextField("身長", text: $user.tall)
                    .keyboardType(.numberPad)
            }.textFieldStyle(RoundedBorderTextFieldStyle())
               
            // プロパティを参照してサイズを表示する
            if !(user.name).isEmpty && !(user.tall).isEmpty {
                Text("\(user.name)さんは\(fitSize(tall: user.tall))")
            }
        } .frame(width: 250)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
