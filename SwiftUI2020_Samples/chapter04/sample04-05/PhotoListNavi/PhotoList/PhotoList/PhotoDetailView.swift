//
//  PhotoDetailView.swift
//  PhotoList
//
//  Created by yoshiyuki oshige on 2020/08/03.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo:PhotoData
    
    var body: some View {
      VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
            Spacer()
        }
      .padding()
      // タイトル（遷移後に表示される）
      .navigationTitle(Text(verbatim: photo.title))
      .navigationBarTitleDisplayMode(.inline)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo: photoArray[0])
    }
}
