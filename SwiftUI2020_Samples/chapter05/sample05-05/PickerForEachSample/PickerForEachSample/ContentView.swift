//
//  ContentView.swift
//  PickerForEachSample
//
//  Created by yoshiyuki oshige on 2020/08/16.
//

import SwiftUI

struct ContentView: View {

    @State  var selectedSize = 2
    @State  var selectedColor = 0
    let sizes = ["XS", "S", "M", "L", "LL"]
    let colors = ["Red", "Green", "Blue", "Yellow", "Pink", "White"]

    var body: some View {
        VStack {
            HStack {
                // Sizeのピッカー
                Picker(selection: $selectedSize, label: Text("Size")) {
                    ForEach(0..<sizes.count) { index in
                        Text(sizes[index])
                    }
                }
                .frame(width: 150)
                .padding(.horizontal, 10)
                .clipped()
                
                // Colorのピッカー
                Picker(selection: $selectedColor, label: Text("Color")) {
                    ForEach(0..<colors.count) { index in
                        Text(colors[index])
                    }
                }
                .frame(width: 150)
                .padding(.horizontal, 10)
                .clipped()
                .onAppear(perform:{
                    selectedColor = colors.count/2
                })
            }
            
            // 結果の表示
            HStack {
                Text("size: \(sizes[selectedSize])")
                    .padding(.horizontal, 40)
                Text("color: \(colors[selectedColor])")
                    .padding(.horizontal, 30)
            }
            .foregroundColor(Color.white)
            .font(.title2)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 340, height: 50)
                    .foregroundColor(Color.green)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
