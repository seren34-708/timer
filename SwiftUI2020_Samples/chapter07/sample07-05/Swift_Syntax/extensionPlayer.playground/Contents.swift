class Player {
    var name: String = ""
    func hello() {
        print("やあ！" + name)
    }
}

extension Player {
    // nameをwhoでもアクセスできるようにする
    var who: String {
        get {
            return name
        }
        set(value){
            name = value
        }
    }
    
    // 新しいメソッドを追加する
    func bye() {
        print("またね！" + name)
    }
}

let user = Player()
user.who = "健治"
user.hello()
user.bye()

