//
//  ContentView.swift
//  PhotoList
//
//  Created by yoshiyuki oshige on 2020/07/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(photoArray) { item in
                NavigationLink(destination: PhotoDetailView(photo: item)) {
                    RowView(photo: item)
                }
            }
            .navigationTitle(Text("写真リスト"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
