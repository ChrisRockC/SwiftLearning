//
//  CC-Enum.swift
//  SwiftLearning
//
//  Created by chenchao on 16/3/9.
//  Copyright © 2016年 iOS. All rights reserved.
//

import Foundation



class CCEnum : NSObject{
    //1. 定义枚举
    enum time{
        case spring
        case summer
        case autumn
        case winter
    }
    
    //2. 使用枚举的时候给变量赋值的时候
    var timer = time.autumn
    
    //2.1 再次使用的时候
//    timer = .spring
    
    
   
}

////3.枚举经常和switch 一起使用
//switch timer1{
//case .spring:
//    print("11")
//    
//}