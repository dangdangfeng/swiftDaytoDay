//
//  ViewController.swift
//  OneDay
//
//  Created by taoxiaofei on 2017/6/29.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    var products: [FirstModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        self.title = "first"
        
        products = [FirstModel(name: "1907 Wall Set", cellImageName: "image-cell1", fullscreenImageName: "phone-fullscreen1"),
                    FirstModel(name: "1921 Dial Phone", cellImageName: "image-cell2", fullscreenImageName: "phone-fullscreen2"),
                    FirstModel(name: "1907 Wall Set", cellImageName: "image-cell3", fullscreenImageName: "phone-fullscreen3"),
                    FirstModel(name: "1907 Wall Set", cellImageName: "image-cell4", fullscreenImageName: "phone-fullscreen4"),]
        
        self.tableView.separatorStyle = .singleLine
        self.tableView.separatorColor = .gray
    }
    
    // MARK: - tableView set
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let products = products{
            return products.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifer = "productCell"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: identifer)
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifer)
        }
        cell!.accessoryType = .disclosureIndicator
        
        cell!.textLabel?.text = products?[(indexPath as NSIndexPath).row].name
        
        if let imageName = products?[(indexPath as NSIndexPath).row].cellImageName{
            cell!.imageView?.image = UIImage(named: imageName)
        }
        
        return cell!;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 98
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVC = nextViewController()
        nextVC.firstModel = products?[indexPath.row]
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}


