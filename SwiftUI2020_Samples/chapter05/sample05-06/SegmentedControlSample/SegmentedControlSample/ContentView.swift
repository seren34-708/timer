//
//  ContentView.swift
//  SegmentedControlSample
//
//  Created by yoshiyuki oshige on 2020/08/17.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor = 0
    let colorViews = [Color.red, Color.green, Color.blue]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            symbolImage(num: selectedColor)
                .resizable()
                .foregroundColor(colorViews[selectedColor])
                .frame(width: 100, height: 100)
                .padding()
        }
        .padding()
    }
    
    func symbolImage(num:Int) -> Image {
        switch num {
            case 0:
                return Image(systemName: "r.circle")
            case 1:
                return Image(systemName: "g.circle")
            case 2:
                return Image(systemName: "b.circle")
            default:
                return Image(systemName: "r.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
