//
//  SecondViewController.swift
//  OneDay
//
//  Created by taoxiaofei on 2017/6/30.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var scroollView : UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "second"
        
        scroollView = UIScrollView(frame: UIScreen.main.bounds)
        scroollView.contentSize = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*3)
        self.view.addSubview(scroollView)
        
        let img1 = UIImageView(frame: UIScreen.main.bounds)
        img1.image = UIImage(named:"phone-fullscreen1")
        scroollView.addSubview(img1)
        
        let img2 = UIImageView(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        img2.image = UIImage(named:"phone-fullscreen2")
        scroollView.addSubview(img2)
        
        let img3 = UIImageView(frame: CGRect(x: 0, y: UIScreen.main.bounds.size.height*2, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        img3.image = UIImage(named:"phone-fullscreen3")
        scroollView.addSubview(img3)
    }

}
