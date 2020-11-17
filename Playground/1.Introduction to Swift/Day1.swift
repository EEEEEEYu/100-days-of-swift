//
//  Day1-6.swift
//  Playground
//
//  Created by 余浩文 on 2020/11/15.
//

import Foundation


/***************  Day1  ***************/

func Day1(){
    // swift是一种静态语言，某个变量初始化后保持类型不变
    var str = "Hello, playground"
    str = "A new string"
    
    // int类型可以通过下划线分割
    var age = 38
    var population = 8_000_000
    
    // string类型可以通过三双引号实现多行
    var str1 = """
    This goes
    over multiple
    lines
    """
    
    // 但是如果只是想把一行分割成三行，需要添加 \
    var str2 = """
    This goes \
    over multiple \
    lines
    """
    
    // double和boolean类型
    var pi = 3.14159
    var awesome = true
    
    // 可以通过反斜杠+括号在string中显示变量
    var score = 85
    var str3 = "Your score was \(score)"
    
    // 以上操作还能嵌套
    var str4 = "The test results are here:\(str3)"
    
    //通过let关键字定义常量
    let taylor = "swift"
    
    // 可以在变量名后面添加类型注解,所有的类型都是首字母大写
    let album: String = "Reputation"
    let year: Int = 1989
    let height: Double = 1.78
    let taylorRocks: Bool = true
    
    // 总结
    /*
     1.You make variables using var and constants using let. It’s preferable to use constants as often as possible.
     2.Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
     3.Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
     4.String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
     5.Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
     */
}

/***************  Day1  ***************/

