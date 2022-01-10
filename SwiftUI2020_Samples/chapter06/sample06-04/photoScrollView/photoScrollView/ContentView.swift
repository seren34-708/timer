//
//  ContentView.swift
//  photoScrollView
//
//  Created by yoshiyuki oshige on 2020/09/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView() {
            LazyVStack(alignment: .center, spacing: 20) {
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
