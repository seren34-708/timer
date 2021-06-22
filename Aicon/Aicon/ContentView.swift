//
//  ContentView.swift
//  Aicon
//
//  Created by matuda naoya on 2021/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "smiley")
            .resizable()
            .foregroundColor(.green)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
