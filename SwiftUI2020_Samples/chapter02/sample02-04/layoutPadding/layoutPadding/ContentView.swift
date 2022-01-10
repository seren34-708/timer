//
//  ContentView.swift
//  layoutPadding
//
//  Created by yoshiyuki oshige on 2020/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack(alignment: .trailing) {
                Text("知性の自転車")
                .font(.largeTitle)
                    .fontWeight(.black)
                Text("Bicycle for the Mind.")
                    .italic()
                    .offset(x: -10, y: 0)
             }
            .padding(.top, 80)
             VStack(alignment: .trailing){
                Text("憐れみは恋の始まり")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                Text("Pity is akin to love.")
                    .italic()
                    .offset(x: -10, y: 0)
            }
             .padding(.top, 20.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
