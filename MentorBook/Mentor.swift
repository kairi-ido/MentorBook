//
//  Mentor.swift
//  MentorBook
//
//  Created by 井戸海里 on 2020/09/06.
//  Copyright © 2020 IdoUmi. All rights reserved.
//

import UIKit

class Mentor {
    //メンター名
    var name: String!
    //担当コース
    var course: String!
    //顔写真
    var imageName: String!
    //初期化　引数でメンター名、コース、顔写真を受け取る
    init(name: String,imageName: String,course: String) {
        //メンタークラスの変数に代入する
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    //UIImageに変換するメソッド
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
