//
//  Stopwatch.swift
//  threeDay
//
//  Created by taoxiaofei on 2017/7/3.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

class Stopwatch: NSObject {
    var counter: Double
    var timer: Timer
    
    override init() {
        counter = 0.0
        timer = Timer()
    }
}
