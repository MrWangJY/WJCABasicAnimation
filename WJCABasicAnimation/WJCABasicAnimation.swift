//
//  WJCABasicAnimation.swift
//  WJCABasicAnimation
//
//  Created by 王建 on 2024/1/18.
//

import Foundation
import QuartzCore
import UIKit
class WJCABasicAnimation {
    
    /// 自定义动画，移动动画，上下浮动,左右移动，循环动画
    /// - Parameters:
    ///   - view: 需要动画效果的view
    ///   - duration: 动画效果时间
    ///   - fromValue: 起始位置
    ///   - toValue: 结束位置
    ///   - repeatCount: 循环次数，Float.infinity无限次重复循环
    ///   - timingFunction: 动画效果，easeInEaseOut 上下浮动不触边返回，easeIn 落地后弹起效果 easeOut//触顶弹回的效果 //linear 触边弹回效果
    ///   - autoreverses: 动画返回重复，false 动画从起点重复，true 从单次结束点返回
    ///   - isMoveX: 是否X轴方向移动，false：Y轴移动，true：X轴方向移动
    ///   - isRemovedOnCompletion: 是否切换页面动画停止 true停止，false不停止
    static func startAdd(view: UIView, duration:TimeInterval, fromValue: Float, toValue: Float, repeatCount: Float, timingFunction: CAMediaTimingFunctionName, autoreverses: Bool,isMoveX: Bool = false, isRemovedOnCompletion: Bool = false){
        // 定义动画属性
        let fromValue = NSNumber(value: fromValue) // 起始位置Y值
        let toValue = NSNumber(value: toValue) // 结束位置Y值
        let animationDuration: TimeInterval = duration // 动画持续时间

        // 创建CAKeyFrameAnimation对象并设置相关属性
        let keyFrameAnimation = CAKeyframeAnimation()
        keyFrameAnimation.repeatCount = repeatCount//无限次重复动画
        keyFrameAnimation.autoreverses = autoreverses//动画返回重复，注释后动画从起点重复
        keyFrameAnimation.keyPath = "position"
        keyFrameAnimation.isRemovedOnCompletion = isRemovedOnCompletion//切换页面动画不停止
        keyFrameAnimation.duration = animationDuration
        keyFrameAnimation.timingFunctions = [CAMediaTimingFunction(name: timingFunction)]
        if isMoveX {
            keyFrameAnimation.values = [NSValue(cgPoint: CGPoint(x: CGFloat(fromValue.floatValue), y: CGFloat(view.center.y))) as AnyObject,
                                         NSValue(cgPoint: CGPoint(x: CGFloat(toValue.floatValue), y: CGFloat(view.center.y))) as AnyObject]
        }else{
            keyFrameAnimation.values = [NSValue(cgPoint: CGPoint(x: CGFloat(view.center.x), y: CGFloat(fromValue.floatValue))) as AnyObject,
                                         NSValue(cgPoint: CGPoint(x: CGFloat(view.center.x), y: CGFloat(toValue.floatValue))) as AnyObject]
        }
        // 开始动画
        view.layer.add(keyFrameAnimation, forKey: nil)
    }
}

