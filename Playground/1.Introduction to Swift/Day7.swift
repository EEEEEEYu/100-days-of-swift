//
//  Day7.swift
//  Playground
//
//  Created by 余浩文 on 2020/12/16.
//

import Foundation

func Day7(){
    // Swift传递的闭包可以接收参数和返回参数
    func travel(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }
    
    travel { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }
    
    // Swift知道传给闭包的参数一定是String类型，所以可以省略参数类型标注
    travel{ place -> String in
        return "I'm going to \(place) in my car"
    }
    
    // Swift同时也知道返回值类型必须为String类型，也可以省略返回值类型标注
    travel{ place in
        return "I'm going to \(place) in my car"
    }
    
    // Swift同时也知道仅有一个返回值，所以闭包的return关键字也能省略
    travel{ place in
        "I'm going to \(place) in my car"
    }
    
    // 如果不需要参数名，可以用$0代替
    travel {
        "I'm going to \($0) in my car"
    }
    
    // 传递的闭包可以有多个参数输入
    func travel2(action: (String, Int) -> String) {
        print("I'm getting ready to go.")
        let description = action("London", 60)
        print(description)
        print("I arrived!")
    }
    
    travel2{
        "I'm going to \($0) at \($1) miles per hour."
    }
    
    // 一个函数也能返回一个闭包。看语法时，函数参数表后面第一个箭头之后的都是函数返回类型，不要混淆
    func travel3() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }
    
    // 对于返回闭包的函数，一般在返回的时候直接调用，不建议再传递给其他变量
    let result2 = travel3()("London")
    
    // Swift的闭包或者函数都能进行值捕获，捕获一个本应该被释放的局部变量
    // 闭包或函数的值捕获是为了保证运行时内存安全
    func travel4() -> (String) -> Void {
        var counter = 1

        return {
            print("\(counter). I'm going to \($0)")
            counter += 1
        }
    }
    let result3 = travel4()
    result3("London")   // counter为2
    result3("London")   // counter为3
    result3("London")   // counter为4
    
    // 总结
    /*
     1、You can assign closures to variables, then call them later on.
     2、Closures can accept parameters and return values, like regular functions.
     3、You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
     4、If the last parameter to your function is a closure, you can use trailing closure syntax.
     5、Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
     6、If you use external values inside your closures, they will be captured so the closure can refer to them later.
     */
}
