//
//  Day5.swift
//  Playground
//
//  Created by 余浩文 on 2020/12/14.
//

import Foundation

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

func square(number: Int) -> Int {
    return number * number
}

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

func greet(_ person: String) {
    print("Hello, \(person)!")
}

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

func doubleInPlace(number: inout Int) {
    number *= 2
}

func Day5(){
    // 调用一个无参函数
    printHelp()
    
    // 调用一个接收int，返回int型参数的函数
    let result = square(number: 6)
    print(result)
    
    // Swift可以给函数参数命2个名，第一个是外部调用时看到的，第二个是函数内使用的
    sayHello(to: "Taylor")
    
    // 如果不需要外部命名，用下划线代替
    greet("Taylor")
    
    // 可以使用默认参数
    greet("Taylor")
    greet("Taylor", nicely: false)
    
    // Swift支持可变参数，print函数就是可变参数函数
    // 可变参数使用...表示可变
    print("Haters", "gonna", "hate")
    square(numbers: 1, 2, 3, 4, 5)
    
    // Swift函数能抛出异常。首先需要定义标准Error类型的枚举值，然后在
    // 需要抛出异常的函数返回箭头前面加上throw关键字。
    // 另外，需要用do语句块包住可能有异常抛出的部分，在调用throw函数之前需要有
    // 关键字try，在异常发生后进入catch。
    do {
        try checkPassword("password")
        print("That password is good!")
    } catch {
        print("You can't use that password.")
    }
    
    // Swift通过inout关键字识别引用传参，并且在调用时需要加上&表示引用
    var myNum = 10
    doubleInPlace(number: &myNum)
    
    // 总结
    /*
     1、Functions let us re-use code without repeating ourselves.
     2、Functions can accept parameters – just tell Swift the type of each parameter.
     3、Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
     4、You can use different names for parameters externally and internally, or omit the external name entirely.
     5、Parameters can have default values, which helps you write less code when specific values are common.
     6、Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
     7、Functions can throw errors, but you must call them using try and handle errors using catch.
     8、You can use inout to change variables inside a function, but it’s usually better to return a new value.

     */
}
