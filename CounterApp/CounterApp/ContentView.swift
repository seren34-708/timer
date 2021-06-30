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
            ZStack{
                Image("counter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("\(number)")
                    .foregroundColor(.red)
                    .font(.largeTitle)
            }
            Button(action: {self.number += 1}) {
                Text("カウント")
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color.blue)
                    .cornerRadius(10.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
