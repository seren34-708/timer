//
//  PhotoData.swift
//  PhotoList
//
//  Created by yoshiyuki oshige on 2020/07/29.
//

import Foundation
// 写真データの配列を変数photoArrayに代入する
var photoArray:[PhotoData] = makeData()

// 写真データを構造体で定義する
struct PhotoData: Identifiable{
    var id: Int
    var imageName:String
    var title:String
}

// 構造体PhotoData型の写真データが入った配列を作る
func makeData()->[PhotoData]{
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id:1, imageName:"IMG_0996", title: "湘南平展望レストランFlat"))
    dataArray.append(PhotoData(id:2, imageName:"IMG_1035", title: "アウトリガーカヌー"))
    dataArray.append(PhotoData(id:3, imageName:"IMG_1504", title: "えぼし号"))
    dataArray.append(PhotoData(id:4, imageName:"IMG_1531", title: "富士山"))
    dataArray.append(PhotoData(id:5, imageName:"IMG_2139", title: "DENTAL CLINIC"))
    dataArray.append(PhotoData(id:6, imageName:"IMG_2250", title: "鵠沼漁港白灯台"))
    dataArray.append(PhotoData(id:7, imageName:"IMG_2269", title: "サザンビーチ海の家"))
    dataArray.append(PhotoData(id:8, imageName:"IMG_2470", title: "天使の翼"))
    dataArray.append(PhotoData(id:9, imageName:"IMG_2883", title: "スイミングスクールバス"))
    dataArray.append(PhotoData(id:10, imageName:"IMG_4199", title: "小田急線江ノ島駅"))
    dataArray.append(PhotoData(id:11, imageName:"IMG_6460", title: "鷹取山"))
    dataArray.append(PhotoData(id:12, imageName:"IMG_7122", title: "支笏湖ぼスワンボート"))
    dataArray.append(PhotoData(id:13, imageName:"IMG_7216", title: "とまチョップ"))
    dataArray.append(PhotoData(id:14, imageName:"IMG_7745", title: "スナックJunko"))
    dataArray.append(PhotoData(id:15, imageName:"IMG_7851", title: "山の電話ボックス"))

    
    return dataArray
}
