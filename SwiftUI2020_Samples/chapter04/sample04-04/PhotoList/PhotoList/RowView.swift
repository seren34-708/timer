//
//  RowView.swift
//  PhotoList
//
//  Created by yoshiyuki oshige on 2020/07/30.
//

import SwiftUI

// 写真データ
struct RowView: View {
    var photo:PhotoData
   
    var body: some View {
        HStack {
            Image(photo.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(photo.title)
            Spacer()
        }
    }
}

// 最初の写真データを使って１行分のプレビューを作る
struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(photo:photoArray[0])
         .previewLayout(.fixed(width: 300, height: 80))
    }
}
