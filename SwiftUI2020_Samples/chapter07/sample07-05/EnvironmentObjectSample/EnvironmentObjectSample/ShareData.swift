//
//  ShareData.swift
//  EnvironmentObjectSample
//
//  Created by yoshiyuki oshige on 2020/09/23.
//

import Foundation
// 共有するデータ
class ShareData: ObservableObject {
    @Published var isOn = false
    @Published var num = 1
}
