//
//  ContentView.swift
//  SimpleNavigationLink2
//
//  Created by yoshiyuki oshige on 2020/08/04.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 5) {
                Image("IMG_7216")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:200)
                NavigationLink(destination: SubView()) {
                    Text("とまチョップ")
                }
                .padding(.bottom)
                
                Image("IMG_1035")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:200)
                NavigationLink(destination: SubView2()) {
                    Text("湘南の風景")
                }
                
                Spacer()
            }
            .navigationTitle("人気スポット")
           
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
