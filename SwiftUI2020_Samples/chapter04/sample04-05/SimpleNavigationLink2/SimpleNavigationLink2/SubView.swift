//
//  SubView.swift
//  SimpleNavigationLink2
//
//  Created by yoshiyuki oshige on 2020/08/04.
//

import SwiftUI

struct SubView: View {
    var body: some View {
        VStack {
            Image("IMG_7216")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("苫小牧港の人気者「とまチョップ」")
                .padding(.bottom)
            Text("海の駅ぷらっとみなと市場では、水揚げ日本一のホッキ貝が大人気です！")
        }
        .padding()
        .navigationTitle(Text("とまチョップ"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView()
    }
}
