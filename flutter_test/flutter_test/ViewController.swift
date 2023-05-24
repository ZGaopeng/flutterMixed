//
//  ViewController.swift
//  flutter_test
//
//  Created by 小瓶子 on 2023/5/24.
//

import UIKit
import Flutter
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "混合开发测试"
        let btn: UIButton = UIButton()
        btn.backgroundColor = .cyan
        btn.frame = CGRect(x: 50, y: 100, width: 100, height: 50)
        btn.addTarget(self, action: #selector(btnChoose), for: .touchUpInside)
        self.view.addSubview(btn);
        
    }
    @objc func btnChoose() {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        present(flutterViewController, animated: true, completion: nil)
    }
}

