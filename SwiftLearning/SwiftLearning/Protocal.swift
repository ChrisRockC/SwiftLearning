//
//  File.swift
//  SwiftLearning
//
//  Created by chenchao on 16/3/8.
//  Copyright © 2016年 iOS. All rights reserved.
//

import Foundation

//swift 协议中的方法是必须实现的， 不像OC还有optional 选项

protocol myDelegate{
    //协议方法前面添加mutating 修饰的关键字之后，这样的方法才可以修改结构体里面的参数
    //在类里面会自动忽略mutating ??
    mutating func hehe() -> String
    
}



//如果要有可选实现的协议方法  也是可以实现的
@objc protocol newDelegate{
    optional func heihei()
}


//3. 如果有一个类既有父类，也遵守了某个协议，那么格式是
//class 类名 ：父类，协议名
class Teacher : Person,newDelegate,myDelegate{
    func hehe()->String{
        return "heheh"
    }
}

//4. 结构体可以遵守协议  但是结构体只能遵守Swift的协议
struct Book:myDelegate{
    var name :String
    
    mutating func changeName()->String{
        self.name = "chenchao"
        return name
    }
}

