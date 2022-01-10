import UIKit

// エラーを定義する
enum KeyError: Error {
    case uniqueError
    case lengthError
}

// 文字列処理（エラーはthrowする）
func keyMaker(_ key1:String, _ key2:String)throws -> String {
    guard key1 != key2 else {
        throw KeyError.uniqueError  // key1とkey2が同じエラー
    }
    guard (5...10).contains(key1.count)&&(5...10).contains(key2.count) else {
        throw KeyError.lengthError  // 文字数が5〜10でないエラー
    }
    let result = (key1 + key2).shuffled() // 連結してシャッフル
    return String(result)
}


//　keyMaker()を例外処理の中で実行する
func testKeyMake1(_ key1:String, _ key2:String){
    do {
        let result = try keyMaker(key1, key2)
        print(result)
    } catch {
        print("エラー" )
    }
}

// キーを与えてテスト
testKeyMake1("Swift", "1234567")
testKeyMake1("Swift", "Swift")
testKeyMake1("Swift", "UI")

//　keyMaker()を例外処理の中で実行する（エラーの種類を振り分ける）
func testKeyMake2(_ key1:String, _ key2:String){
    do {
        let result = try keyMaker(key1, key2)
        print(result)
    } catch KeyError.uniqueError {
        print("２つのキーが同じエラー" )
    } catch KeyError.lengthError {
        print("文字数エラー")
    } catch {
        print("不明のエラー")
    }
}

// キーを与えてテスト
testKeyMake2("Swift", "1234567")
testKeyMake2("Swift", "Swift")
testKeyMake2("Swift", "UI")
