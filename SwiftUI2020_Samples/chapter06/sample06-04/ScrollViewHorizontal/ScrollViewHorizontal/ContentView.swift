//
//  ContentView.swift
//  ScrollViewHorizontal
//
//  Created by yoshiyuki oshige on 2020/09/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(0..<10) { num in
                    Page(str: String(num))
                }
            }
        }
    }
}

struct Page: View {
    let w:CGFloat = UIScreen.main.bounds.width * 3/5
    let h:CGFloat = 200
    let str:String
    
    var body: some View {
        ZStack {
            Color.gray
                .frame(width: w, height: h)
                .cornerRadius(8)
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
