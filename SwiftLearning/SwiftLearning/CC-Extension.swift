//
//  CC-Extension.swift
//  SwiftLearning
//
//  Created by chenchao on 16/3/9.
//  Copyright © 2016年 iOS. All rights reserved.
//

import Foundation


//1. extension 可以给一个类拓展新的协议  
//  疑问： 为什么不在一个协议定义多个方法 这样不就可以解决了  --》 person：Delegate1 extension person:Delegate2
//  协议： 我这里触发了事件，但是我只是把数据提供出去了  逻辑处理  刷新页面交给控制器就可以了

extension Person:myDelegate{
    
    func hehe() -> String {
        return "实现代理方法"
    }
    
    //2. extension 是不可以给一个类扩展新的属性的
//    var newPro : String? = nil  // extension may not contains stored properties
    
    //3. 但是可以给一个类增加新的函数
    func newFunc(){}
    
    
    
}


//4. extension 也可以对结构体也是可以遵守新的协议的
//extension Frame : myDelegate{
//    
//}