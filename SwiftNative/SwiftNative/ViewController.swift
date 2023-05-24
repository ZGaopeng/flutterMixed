//
//  ViewController.swift
//  SwiftNative
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
        btn.frame = CGRect(x: 50, y: 300, width: 100, height: 50)
        btn.addTarget(self, action: #selector(btnChoose), for: .touchUpInside)
       
        self.view.addSubview(btn)
        // flutter作为item嵌入
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        addChild(flutterViewController)
        flutterViewController.view.translatesAutoresizingMaskIntoConstraints = false

        guard let flutterView = flutterViewController.view else { return }

        flutterView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(flutterView)
        flutterView.frame = CGRect(x: 0, y: 400, width: 414, height: 400)
//        let constraints = [
//            flutterView.topAnchor.constraint(equalTo: btn.bottomAnchor),
//            flutterView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            flutterView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            flutterView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ]
//
//        NSLayoutConstraint.activate(constraints)

//        flutterViewController.didMove(toParent: self)
//        flutterView.layoutIfNeeded()
        
    }
    @objc func btnChoose() {
        // 第一种方式：
//        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
//        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
//        present(flutterViewController, animated: true, completion: nil)
        
        // 第二种方式：
        let flutterVC = FlutterViewController()
        present(flutterVC, animated: true)
        
    }
}

