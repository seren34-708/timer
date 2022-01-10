//
//  ContentView.swift
//  PageTabViewStyleSample
//
//  Created by yoshiyuki oshige on 2020/09/12.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag) {
            HomeTabView().tag(1)
            WeatherTabView().tag(2)
            NewsTabView().tag(3)
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

struct HomeTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "music.note.house")
                .scaleEffect(x: 3.0, y: 3.0)
                .frame(width: 100, height: 100)
            Text("HOME").font(.system(size: 20))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.5, green: 0.9, blue: 0.9))
        .ignoresSafeArea()
    }
}

struct WeatherTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun")
                .scaleEffect(x: 3.0, y: 3.0)
                .frame(width: 100, height: 100)
            Text("お天気ページ").font(.system(size: 20))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.6, green: 0.6, blue: 1.0))
        .ignoresSafeArea()
    }
}

struct NewsTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "newspaper")
                .scaleEffect(x: 3.0, y: 3.0)
                .frame(width: 100, height: 100)
            Text("ニュースと解説").font(.system(size: 20))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.9, green: 0.9, blue: 0.8))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        HomeTabView()
        WeatherTabView()
        NewsTabView()
    }
}
