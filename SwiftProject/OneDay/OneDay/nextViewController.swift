//
//  nextViewController.swift
//  OneDay
//
//  Created by taoxiaofei on 2017/6/30.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {
    
    var headerLabel : UILabel!
    var button : UIButton!
    var baseImageView : UIImageView!
    
    var firstModel : FirstModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        baseImageView = UIImageView(frame: UIScreen.main.bounds)
        if let imageName = firstModel.fullscreenImageName{
            baseImageView.image = UIImage(named:imageName)
        }
        self.view.addSubview(baseImageView)
        
        headerLabel = UILabel(frame: CGRect(x: UIScreen.main.bounds.size.width/2 - 100, y: 100, width: 200, height: 50))
        headerLabel.textAlignment = .center
        headerLabel.text = firstModel.name
        self.view.addSubview(headerLabel)
        
        button = UIButton(frame: CGRect(x: UIScreen.main.bounds.size.width/2 - 50, y: 150, width: 100, height: 50))
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        button.setTitle("Click", for: .normal)
        button.backgroundColor = .gray
        self.view.addSubview(button)
    }
    
    @objc func click()  {
        print("hello")
    }

}
