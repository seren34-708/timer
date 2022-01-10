//
//  ContentView.swift
//  MapSample
//
//  Created by yoshiyuki oshige on 2020/10/01.
//

import SwiftUI
import MapKit

struct ContentView: View {
    // 座標と領域を指定する
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.6805702,   // 緯度
            longitude: 139.7676359  // 経度
        ),
        latitudinalMeters: 1000.0,
        longitudinalMeters: 1000.0
    )
    
    var body: some View {
        // 地図を表示する
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
