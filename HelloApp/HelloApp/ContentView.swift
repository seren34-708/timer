//
//  ContentView.swift
//  HelloApp
//
//  Created by matuda naoya on 2021/06/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
