//
//  ViewController.swift
//  SwiftTest
//
//  Created by guosm on 2021/8/31.
//

import UIKit

class HomeVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置设置导航栏标题
        self.navigationItem.title="main page"
        //设置导航栏背景色
        self.navigationController?.navigationBar.barTintColor = UIColor.white

        // button  点击无参数
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(HomeVC.buttonTap), for:.touchUpInside)
        //button1：点击有参数
        let button1 = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 80))
        button1.setTitle("按钮点击", for: UIControl.State.normal)
        button1.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button1.backgroundColor = UIColor.green
        button1.addTarget(self, action: #selector(buttonTap1(button:)), for:.touchUpInside)
        
        self.view.addSubview(button)
        self.view.addSubview(button1)
    }
    
    
    //selector 其实是 Objective-C runtime 的概念
    @objc func buttonTap() {
        print("无参点击buttonTap")
        
        // 例子最为简单明了
        let str: String? = "12312"
        let greeting = "World!"
        if let name = str {
              let message = greeting + name
              print(message)
        }
        self.showBottomAlert();
    }
    
    @objc func buttonTap1(button:UIButton) {
        
        var one = 1
        
        for index in 0...4{
            one += 1
            print("索引值=\(index)",",测试值=\(one)")
        }
        print("有参数点击buttonTap参数")
        let vc = HomeVC()
        
        self.navigationController?.pushViewController(vc, animated: true);
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

