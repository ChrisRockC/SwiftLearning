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
        // Swift 属性：存储属性  计算属性 这里并不需要赋上初始值
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
        init(x newX:Float, y newY:Float, width newWidth:Float, height newHeight:Float){
            //x  为外部参数名
            //newX 为内部参数名
//            一个比较长的有描述意义的外部参数名，
//            在函数内部简写为短的内部参数名。
            
            self.x = newX
            self.y = newY
            self.width = newWidth
            self.height = newHeight
            
        }
        
        //3. Swift结构体内部可以任意创建函数
        // 如果要在函数里面修改属性的值得话，在函数前面加上mutating关键字修饰
        mutating func changeX(){
            self.x = 100
        }
        
        //4. static属性不能在普通的函数里面调用
        static var name:String? = nil   // 另外一种初始化 var name = String()
        
        //5. static函数  相当于OC的类方法 不能调用普通属性 但是可以调用static属性 ，可以调用本结构存在的一些函数？
        static func sayName(){
            self.name = "chenchao"
            print(self.name)
        }
        
        
        
    }

}
