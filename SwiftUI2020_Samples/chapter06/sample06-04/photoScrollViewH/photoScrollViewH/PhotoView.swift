//
//  PhotoView.swift
//  photoScrollViewH
//
//  Created by yoshiyuki oshige on 2020/09/10.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData
    
    var body: some View {
        VStack {
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(photo.title)
                .font(.caption)
                .padding()
        }
        .padding()
     }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo:photoArray[0])
    }
}
