//
//  LocationManager.swift
//  MapLocationManager
//
//  Created by yoshiyuki oshige on 2020/10/07.
//

import MapKit

// 現在地を取得するためのクラス
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    // ロケーションマネージャを作る
    let manager = CLLocationManager()
    // 領域の更新をパブリッシュする
    @Published var region =  MKCoordinateRegion()

    override init() {
        super.init()
        manager.delegate = self // デリゲートの設定
        manager.requestWhenInUseAuthorization() // プライバシー設定の確認
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = 2 // 更新距離(m)
        manager.startUpdatingLocation()
    }
    
    // 領域の更新（デリゲートメソッド）
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // loacationsの最後の要素に対して実行する
        locations.last.map {
            let center = CLLocationCoordinate2D(
                latitude: $0.coordinate.latitude,
                longitude: $0.coordinate.longitude)
            // 領域の更新
            region = MKCoordinateRegion(
                center: center,
                latitudinalMeters: 1000.0,
                longitudinalMeters: 1000.0
            )
        }
    }
}
