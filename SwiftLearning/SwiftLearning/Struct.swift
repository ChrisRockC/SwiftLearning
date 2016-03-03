//
//  Struct.swift
//  SwiftLearning
//
//  Created by chenchao on 16/3/3.
//  Copyright © 2016年 iOS. All rights reserved.
//

import UIKit

class Struct: NSObject {
    
    struct Frame {
        // Swift 属性：存储属性 已经 计算属性
        //1.1 存储属性；存储作用
        var x :Float
        var y :Float
        var width : Float
        var height:Float
        
        //1.2 计算属性：通过计算获取自己的值
        var centerX :Float{
            get{
                return x + width/2
            }
            set{  // Swift 不允许set方法单独存在 必须先有get方法
                self.centerX = newValue
            }
        }
        
        var centerY:Float{
            get{
                return y  + width/2
            }
            set{
                self.centerY = newValue
            }
        }
        
        //2. swift Struct内可以创建init方法
    }

}
