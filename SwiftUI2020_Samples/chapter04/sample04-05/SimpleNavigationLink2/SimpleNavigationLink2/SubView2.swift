//
//  SubView2.swift
//  SimpleNavigationLink2
//
//  Created by yoshiyuki oshige on 2020/08/04.
//

import SwiftUI

struct SubView2: View {
    var body: some View {
        VStack {
            Image("IMG_1035")
            .resizable()
            .aspectRatio(contentMode: .fit)
            Text("アウトリガーカヌー")
                .padding(.bottom)
            
            Image("IMG_3673")
            .resizable()
            .aspectRatio(contentMode: .fit)
            Text("サザンビーチ海の家")
        }
        .padding()
        .navigationTitle(Text("湘南の風景"))
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct SubView2_Previews: PreviewProvider {
    static var previews: some View {
        SubView2()
    }
}
