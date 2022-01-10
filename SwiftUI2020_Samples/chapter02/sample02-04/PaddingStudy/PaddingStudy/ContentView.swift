//
//  ContentView.swift
//  PaddingStudy
//
//  Created by yoshiyuki oshige on 2020/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("1. 枕草子／清少納言")
                .padding([.leading, .bottom], 20.0)
            Text("2. 春はあけぼの")
            Text("3. やうやう白くなり行く")
            Text("4. 山ぎは少しあかりて")
                .padding()
            Text("5. 紫だちたる雲の細くたなびきたる")
        }
        .padding(.vertical, 50.0)
        .padding(.horizontal, 30.0)
//        .padding([.top, .bottom], 50.0)
//        .padding([.leading, .trailing], 30.0)

        .font(.callout)
        .border(Color.pink, width: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


