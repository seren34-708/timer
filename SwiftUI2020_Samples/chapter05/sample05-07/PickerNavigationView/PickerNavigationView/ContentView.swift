//
//  ContentView.swift
//  PickerNavigationView
//
//  Created by yoshiyuki oshige on 2020/08/17.
//

import SwiftUI

struct ContentView: View {
    @State  var selectedSize = 2
    let sizes = ["XS", "S", "M", "L", "LL"]
    
    var body: some View {
        NavigationView {
            Form {
                // Sizeのピッカー
                Picker(selection: $selectedSize, label: Text("Size")) {
                    ForEach(0..<sizes.count) { index in
                        Text(sizes[index])
                    }
                }
                Text("選んだサイズ：\(sizes[selectedSize])")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
