//
//  ContentView.swift
//  ActionSheetDelete
//
//  Created by yoshiyuki oshige on 2020/09/08.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet: Bool = false
    
    var body: some View {
        Button(action: {
            isSheet = true
        }) {
            Text("削除")
                .foregroundColor(.white)
                .background(Capsule()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 30))
        }.actionSheet(isPresented: $isSheet){
        ActionSheet(title: Text("削除しますか?"),
                    buttons: [
                         .destructive(Text("削除"), action: {
                            deleteProcess()
                         }),
                         .cancel(Text("キャンセル"), action: {})
                     ])
         }
    }
}

func deleteProcess() {
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
