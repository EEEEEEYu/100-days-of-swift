//
//  Day6.swift
//  Playground
//
//  Created by 余浩文 on 2020/12/16.
//

import Foundation

func travel(action:() -> Void){
    print("I'm getting ready to go")
    action()
    print("I arrived")
}

func twoStringOperation(str1:String,str2:String,closure:(String,String)->String) -> String{
    return closure(str1,str2)
}

func Day6(){
    // Swift能把函数当作变量一样存储和传递，这种函数称为闭包
    let driving = {
        print("I'm driving in my car")
    }
    
    //driving()
    
    // Swift闭包函数也能接收参数。参数列表用括号定义，并且在后面用关键字in表示参数列表
    // 闭包函数返回值用箭头在括号后面定义
    let driving2 = {(place:String) -> String in
        return "I'm going to \(place) in my car"
    }
    
    let message = driving2("London")
    print(message)
    
    // Swift闭包也能被当作参数传递
    travel(action: driving)
    
    // 如果一个函数的最后一个参数是一个闭包，则可以使用尾随闭包的方式调用这个函数
    // 正常调用,会有双括号
    twoStringOperation(str1: "aaa", str2: "bbb", closure: {(s1,s2)->String in
        return s1+s2
    })
    // 尾随闭包调用，将闭包参数放到花括号内部，并且省略返回值
    twoStringOperation(str1: "ccc", str2: "ddd"){ s1,s2 in
        return s1+s2
    }
    // 如果不在意传入闭包的参数名，可以用$0、$1表示第1、第2个参数等
    twoStringOperation(str1: "eee", str2: "fff"){
        return $0 + $1
    }
}
