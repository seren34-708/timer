//
//  ContentView.swift
//  PickerNavigationViewSections
//
//  Created by yoshiyuki oshige on 2020/08/17.
//

import SwiftUI

struct ContentView: View {
    @State  var selectedSize = 2
    @State  var selectedColor = 0
    let sizes = ["XS", "S", "M", "L", "LL"]
    let colors = ["Red", "Green", "Blue", "Yellow", "Pink", "White"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("サイズ").font(.headline), footer: Text("USサイズの少し大きめです").padding(.bottom, 20)) {
                    // Sizeのピッカー
                    Picker(selection: $selectedSize, label: Text("Size")) {
                        ForEach(0..<sizes.count) { index in
                            Text(sizes[index])
                        }
                    }
                    Text("選んだサイズ：\(sizes[selectedSize])")
                }
                
                Section(header: Text("色").font(.headline)) {
                    // Colorのピッカー
                    Picker(selection: $selectedColor, label: Text("Color")) {
                        ForEach(0..<colors.count) { index in
                            Text(colors[index])
                        }
                    }
                    Text("選んだ色：\(colors[selectedColor])")
                }
                
            } // From
            .navigationTitle(Text("サイズと色"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
