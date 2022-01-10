//
//  EnvironmentObjectSampleApp.swift
//  EnvironmentObjectSample
//
//  Created by yoshiyuki oshige on 2020/09/17.
//

import SwiftUI

@main
struct EnvironmentObjectSampleApp: App {
    var body: some Scene {
        WindowGroup {
            // 共有オブジェクトを作る
            ContentView().environmentObject(ShareData())
        }
    }
}
