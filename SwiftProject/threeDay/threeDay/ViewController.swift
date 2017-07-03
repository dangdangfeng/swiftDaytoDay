//
//  ViewController.swift
//  threeDay
//
//  Created by taoxiaofei on 2017/7/3.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    fileprivate var contentView: UIScrollView!
    
    fileprivate var timerLabel: UILabel!
    fileprivate var lapTimerLabel: UILabel!
    fileprivate var playPauseButton: UIButton!
    fileprivate var lapRestButton: UIButton!
    fileprivate var lapsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "Stopwatch"
        
        content()
    }
    
    //MARK: View Create
    func content() {
        
        contentCreate()
        timerCreate()
    }
    
    func contentCreate() {
        contentView = UIScrollView()
        contentView.backgroundColor = .red
        contentView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        self.view.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
    
    func timerCreate() {
        let baseView: UIView = UIView()
        baseView.backgroundColor = .white
        contentView.addSubview(baseView)
        
        baseView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(self.view)
            make.height.equalTo(264)
        }
        
        timerLabel = UILabel()
        timerLabel.text = "00:00.00"
        timerLabel.font = UIFont.systemFont(ofSize: 40.0)
        baseView.addSubview(timerLabel)
        timerLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(baseView)
            make.centerY.equalTo(baseView).offset(44)
        }
        
        lapTimerLabel = UILabel()
        lapTimerLabel.text = "00:00.00"
        lapTimerLabel.font = UIFont.systemFont(ofSize: 17.0)
        baseView.addSubview(lapTimerLabel)
        lapTimerLabel.snp.makeConstraints { (make) in
            make.right.equalTo(timerLabel)
            make.bottom.equalTo(timerLabel.snp.top).offset(1)
        }
    }
}

