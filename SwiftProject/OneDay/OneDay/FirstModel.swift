//
//  FirstModel.swift
//  OneDay
//
//  Created by taoxiaofei on 2017/6/30.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

class FirstModel: NSObject {
    var name: String?
    var cellImageName: String?
    var fullscreenImageName: String?
    
    init(name: String, cellImageName: String, fullscreenImageName: String) {
        self.name = name
        self.cellImageName = cellImageName
        self.fullscreenImageName = fullscreenImageName
    }
}
