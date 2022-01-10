//
//  ContentView.swift
//  WheelPickerSample
//
//  Created by yoshiyuki oshige on 2020/08/16.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = 0
    let colorViews:[Color] = [.red, .green, .blue]
    let colorNames = ["Red", "Green", "Blue"]

    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }

            HStack{
                colorViews[selectedColor]
                    .frame(width: 50, height: 100)
                Text("value: \(selectedColor)").frame(width: 60)
                Text("\(colorNames[selectedColor])").frame(width: 70)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
