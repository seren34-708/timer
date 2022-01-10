//
//  ContentView.swift
//  TextEditorDataSave1
//
//  Created by yoshiyuki oshige on 2020/09/01.
//

import SwiftUI

struct ContentView: View {
    @State var theText: String = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $theText)
                .lineSpacing(10)
                .border(Color.gray)
                .padding([.leading, .bottom, .trailing])
                .navigationTitle("メモ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
