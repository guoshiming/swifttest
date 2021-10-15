//
//  HomeVC.swift
//  SwiftTest
//
//  Created by guosm on 2021/9/15.
//
import UIKit
import Foundation

class MyVC: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        
        //button1：点击有参数
        let button1 = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 80))
        button1.setTitle("按钮点击", for: UIControl.State.normal)
        button1.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button1.backgroundColor = UIColor.green
        button1.addTarget(self, action: #selector(buttonTap1(button:)), for:.touchUpInside)
        self.view.addSubview(button1)
    }
    
    @objc func buttonTap1(button:UIButton) {
        
        let urs="its://"

        let url:URL?=URL.init(string: urs)

        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        print("有参数点击")
    }
}

