//
//  ContentView.swift
//  TabViewSample
//
//  Created by yoshiyuki oshige on 2020/09/11.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag) {
            Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
            Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
            Text("Tab Content 3").tabItem { Text("Tab Label 3") }.tag(3)
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
