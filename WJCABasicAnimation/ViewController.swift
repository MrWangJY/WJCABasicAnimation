//
//  ViewController.swift
//  WJCABasicAnimation
//
//  Created by 王建 on 2024/1/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgView = UIView(frame: CGRect(x: 100, y: 100, width: 120, height: 120))
        bgView.backgroundColor = .orange
        self.view.addSubview(bgView)
        WJCABasicAnimation.startAdd(view: bgView, duration: 0.7, fromValue: Float(bgView.center.y), toValue: Float(bgView.center.y) + 40, repeatCount: Float.infinity, timingFunction: .linear,autoreverses: true, isMoveX: false)

        let testView = UIView(frame: CGRect(x: 100, y: 300, width: 120, height: 120))
        testView.backgroundColor = .purple
        self.view.addSubview(testView)
        WJCABasicAnimation.startAdd(view: testView, duration: 0.7, fromValue: Float(testView.center.x), toValue: Float(testView.center.x) + 40, repeatCount: Float.infinity, timingFunction: .linear,autoreverses: true, isMoveX: true)
    }


}

