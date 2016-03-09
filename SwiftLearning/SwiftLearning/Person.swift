//
//  Person.swift
//  SwiftLearning
//
//  Created by chenchao on 16/3/7.
//  Copyright © 2016年 iOS. All rights reserved.
//

import Foundation


// ps : java 重写（覆盖） 重载（方法名相同 参数不同）  静态方法不可以不用实例化 直接调用


//类的格式 class
class Person{
    // 在类里面创建属性的时候 必须有初始值 如果没有的话，就定义其为可选类型
    var name : String? = nil
    var age : Int? = nil
    
    //1. private 是私有变量
    private var gender : String? = nil
    //static  修饰的属性标示类属性 or 静态属性
    static var country : String? = nil
    
    //2. 初始化方法
    init(name newName : String,age newAge : Int){
        self.name  = newName   //这里也是体现了内外部变量名的优势
        self.age = newAge
    }
    
    //3.实例方法里面不能直接调用类属性
    // 实例方法可以直接对实例对象进行修改赋值(与结构体不同)  结构体是要加上mutating
    // 在函数声明前加上private 标示私有方法
    private func sayHi(){
        self.gender = "女"
        print(self.gender)
    }
    
    //4. static 修饰的类方法
    //static 修饰的类方法是不可以被子类重写的
    static func sayNihao(){
        self.country = "中国"
        print(self.country)
    }
    
    //5. class 修饰的类方法是可以被子类重写的， 所以上面是不是更应该叫做静态方法
    class func sayHello() {
        self.country = "china"
        print(self.country)
    }
    


    
}

//  6. 实例化person对象

func test(){
    let person :Person = Person(name: "小明", age: 18)
    
    // 这里是类似于OC对象方法
    person.sayHi()
    
    //sayHello 是可以被子类重写的
    Person.sayNihao()
    Person.sayHello()
}


// 这里就是继承了  override
class Student:Person {
    //子类想要重写父类的方法需要添加override关键字
    override init(name newName: String, age newAge: Int) {
        super.init(name: newName, age: newAge)
    }
    
    //父类用class 修饰的类方法 是可以被子类重写的
    override class func sayHello() {}
    
    
}








