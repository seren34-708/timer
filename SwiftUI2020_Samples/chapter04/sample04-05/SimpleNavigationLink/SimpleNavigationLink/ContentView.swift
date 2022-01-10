//
//  ContentView.swift
//  SimpleNavigationLink
//
//  Created by yoshiyuki oshige on 2020/08/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SubView()) {
                Text("GO SubView")
            }
            .navigationTitle("Home")
        }
    }
}

struct SubView: View {
    var body: some View {
        Text("SubView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
