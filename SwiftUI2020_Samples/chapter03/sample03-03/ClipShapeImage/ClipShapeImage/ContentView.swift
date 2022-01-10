//
//  ContentView.swift
//  ClipShapeImage
//
//  Created by yoshiyuki oshige on 2020/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("bodyboarder")
             .resizable()
             .aspectRatio(contentMode: .fill)
             .frame(width: 300, height: 300)
            .clipShape(Circle())
////        .clipShape(RoundedRectangle(cornerRadius: 20))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
