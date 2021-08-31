//
//  ViewController.swift
//  SwiftTest
//
//  Created by guosm on 2021/8/31.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        
        // button  点击无参数
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(ViewController.buttonTap), for:.touchUpInside)
        //button1：点击有参数
        let button1 = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 80))
        button1.backgroundColor = UIColor.green
        button1.addTarget(self, action: #selector(buttonTap1(button:)), for:.touchUpInside)
        
        self.view.addSubview(button)
        self.view.addSubview(button1)
        
        self.showBottomAlert();
    }
    
    
    //selector 其实是 Objective-C runtime 的概念
    @objc func buttonTap() {
        print("无参点击buttonTap")
        
        self.showBottomAlert();
    }
    
    @objc func buttonTap1(button:UIButton) {
        print("有参数点击buttonTap参数")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// 屏幕底部弹出的Alert
    func showBottomAlert(){
        let alertController=UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let cancel=UIAlertAction(title:"取消", style: .cancel, handler: nil)
        let takingPictures=UIAlertAction(title:"拍照", style: .default)
        {
            action in
        }
        let localPhoto=UIAlertAction(title:"本地图片", style: .default)
        {
            action in
            print("测试");
            
        }
        alertController.addAction(cancel)
        alertController.addAction(takingPictures)
        alertController.addAction(localPhoto)
        self.present(alertController, animated:true, completion:nil)
        
    }
}

