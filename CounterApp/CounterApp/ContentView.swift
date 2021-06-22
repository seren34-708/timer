//
//  ContentView.swift
//  CounterApp
//
//  Created by matuda naoya on 2021/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            Text("\(number)")
            Button(action: count) {
                Text("カウント")
            }
        }
    }
    func count(){
        self.number += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
