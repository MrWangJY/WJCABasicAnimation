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
