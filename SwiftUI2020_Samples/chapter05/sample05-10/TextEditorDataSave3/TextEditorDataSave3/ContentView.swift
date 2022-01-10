//
//  ContentView.swift
//  TextEditorDataSave3
//
//  Created by yoshiyuki oshige on 2020/09/01.
//

import SwiftUI

// 保存ファイルへのURLを作る
func docURL(_ fileName:String) -> URL? {
    let fileManager = FileManager.default
    do {
        // Documentsフォルダ
        let docsUrl = try fileManager.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false)
        // URLを作る
        let url = docsUrl.appendingPathComponent(fileName)
        return url
    } catch {
        return nil
    }
}

// テキストデータを保存する
func saveText(_ textData:String, _ fileName:String) {
    // URLを得られたらアンラップしてurlに代入
    guard let url = docURL(fileName) else {
        return
    }
    // ファイルパスへの保存
    do {
        let path = url.path
        try textData.write(toFile: path, atomically: true, encoding: .utf8)
    } catch let error as NSError {
        print(error)
    }
}

// テキストデータの読み込んで戻す
func loadText(_ fileName:String) -> String? {
    // URLを得られたらアンラップしてurlに代入
    guard let url = docURL(fileName) else {
        return nil
    }
    // urlからの読み込み
    do {
        let textData = try String(contentsOf: url, encoding: .utf8)
        return textData
    } catch {
        return nil
    }
}

// キーボードを下げる
extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil
        )
    }
}

struct ContentView: View {
    @State var theText: String = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $theText)
                .lineSpacing(10)
                .border(Color.gray)
                .padding([.leading, .bottom, .trailing])
                .navigationTitle("メモ")
                .toolbar {
                    // 読み込みボタン
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            if let data = loadText("sample.txt") {
                                theText = data
                            }
                        } label: {
                            Text("読み込み")
                        }
                    }
                    // 保存ボタン
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            saveText(theText, "sample.txt")
                            UIApplication.shared.endEditing()
                        } label: {
                            Text("保存")
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
