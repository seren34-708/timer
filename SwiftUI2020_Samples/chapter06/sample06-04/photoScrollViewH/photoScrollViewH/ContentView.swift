//
//  ContentView.swift
//  photoScrollViewH
//
//  Created by yoshiyuki oshige on 2020/09/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(photoArray) {photoData in
                    PhotoView(photo:photoData)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
