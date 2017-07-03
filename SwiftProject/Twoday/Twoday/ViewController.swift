//
//  ViewController.swift
//  Twoday
//
//  Created by taoxiaofei on 2017/7/3.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate var scrollView : UIScrollView!
    
    private var titleLab: UILabel!
    private var nameLab: UILabel!
    private var genderLab: UILabel!
    private var birthdayLab: UILabel!
    private var workLab: UILabel!
    private var salaryLab: UILabel!
    private var straightLab: UILabel!
    
    private var nameText: UITextField!
    private var genderSeg: UISegmentedControl!
    private var birthdayPicker: UIDatePicker!
    private var workText: UITextField!
    private var salarySlider: UISlider!
    private var straightSwitch: UISwitch!
    private var tweetBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        scrollView = UIScrollView()
        self.view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height+50)
        scrollView.alwaysBounceHorizontal = false
        scrollView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        titleCreate()
        nameCreate()
        genderCreate()
        birthdayCreate()
        workCreate()
        salaryCreate()
        straight()
        tweetCreate()
    }
    
    override func viewDidLayoutSubviews() {
        nameText.snp.updateConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
        
        genderSeg.snp.updateConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
        
        birthdayPicker.snp.updateConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
        
        workText.snp.updateConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
        
        salarySlider.snp.updateConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
        
        straightSwitch.snp.updateConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
    }
    
    //MARK: View Create
    
    func titleCreate() {
        titleLab = UILabel()
        titleLab.text = "LoveTweet"
        scrollView.addSubview(titleLab)
        titleLab.snp.makeConstraints { (make) in
            make.centerX.equalTo(scrollView)
            make.top.equalTo(46)
        }
    }
    
    func nameCreate() {
        nameLab = UILabel()
        nameLab.text = "Name"
        scrollView.addSubview(nameLab)
        nameLab.snp.makeConstraints { (make) in
            make.left.equalTo(22)
            make.top.equalTo(titleLab).offset(48)
        }
        
        nameText = UITextField()
        let borderColor : UIColor = .gray
        nameText.layer.borderColor = borderColor.cgColor
        nameText.layer.borderWidth = 0.5
        scrollView.addSubview(nameText)
        nameText.snp.makeConstraints { (make) in
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
            make.left.equalTo(nameLab.snp.right).offset(42)
            make.centerY.equalTo(nameLab)
        }
        
    }
    
    func genderCreate() {
        genderLab = UILabel()
        genderLab.text = "Gender"
        scrollView.addSubview(genderLab)
        genderLab.snp.makeConstraints { (make) in
            make.top.equalTo(nameLab).offset(48)
            make.left.equalTo(22)
        }
        
        genderSeg = UISegmentedControl()
        genderSeg.insertSegment(withTitle: "Male", at: 0, animated: false)
        genderSeg.insertSegment(withTitle: "Female", at: 1, animated: false)
        genderSeg.selectedSegmentIndex = 0
        scrollView.addSubview(genderSeg)
        genderSeg.snp.makeConstraints { (make) in
            make.centerY.equalTo(genderLab)
            make.left.equalTo(100)
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
    }
    
    func birthdayCreate()  {
        birthdayLab = UILabel()
        birthdayLab.text = "Birthday"
        scrollView.addSubview(birthdayLab)
        birthdayLab.snp.makeConstraints { (make) in
            make.top.equalTo(genderLab).offset(48)
            make.left.equalTo(22)
        }
        
        birthdayPicker = UIDatePicker()
        scrollView.addSubview(birthdayPicker)
        birthdayPicker.snp.makeConstraints { (make) in
            make.centerY.equalTo(birthdayLab).offset(70)
            make.left.equalTo(100)
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
    }
    
    func workCreate() {
        workLab = UILabel()
        workLab.text = "Work"
        scrollView.addSubview(workLab)
        workLab.snp.makeConstraints { (make) in
            make.top.equalTo(birthdayLab).offset(178)
            make.left.equalTo(22)
        }
        
        workText = UITextField()
        let borderColor : UIColor = .gray
        workText.layer.borderColor = borderColor.cgColor
        workText.layer.borderWidth = 0.5
        scrollView.addSubview(workText)
        workText.snp.makeConstraints { (make) in
            make.centerY.equalTo(workLab)
            make.left.equalTo(100)
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
    }
    
    func salaryCreate() {
        salaryLab = UILabel()
        salaryLab.text = "Work"
        scrollView.addSubview(salaryLab)
        salaryLab.snp.makeConstraints { (make) in
            make.top.equalTo(workLab).offset(48)
            make.left.equalTo(22)
        }
        
        salarySlider = UISlider()
        salarySlider.value = 100
        salarySlider.minimumValue = 50
        salarySlider.maximumValue = 300
        scrollView.addSubview(salarySlider)
        salarySlider.snp.makeConstraints { (make) in
            make.centerY.equalTo(salaryLab)
            make.left.equalTo(100)
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
    }
    
    func straight() {
        straightLab = UILabel()
        straightLab.text = "Straight?"
        scrollView.addSubview(straightLab)
        straightLab.snp.makeConstraints { (make) in
            make.top.equalTo(salaryLab).offset(48)
            make.left.equalTo(22)
        }
        
        straightSwitch = UISwitch()
        scrollView.addSubview(straightSwitch)
        straightSwitch.snp.makeConstraints { (make) in
            make.centerY.equalTo(straightLab)
            make.left.equalTo(100)
            make.width.equalTo(UIScreen.main.bounds.size.width - 140)
        }
    }
    
    func tweetCreate() {
        tweetBtn = UIButton()
        tweetBtn.setTitleColor(.green, for: .normal)
        tweetBtn.setTitle("Tweet it!", for: .normal)
        scrollView.addSubview(tweetBtn)
        tweetBtn.snp.makeConstraints { (make) in
            make.centerX.equalTo(scrollView)
            make.top.equalTo(straightLab).offset(50)
        }
    }
}

