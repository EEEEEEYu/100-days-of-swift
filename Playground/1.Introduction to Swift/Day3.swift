//
//  Day3.swift
//  Playground
//
//  Created by 余浩文 on 2020/11/17.
//

import Foundation

// 算数运算

func Day3(){
    // 四则运算和取模
    let first = 12
    let second = 4
    
    let total = first + second
    let diff = first - second
    let product = first * second
    let divided = first / second
    let remainder = 13 % second
    
    // Swift不支持隐式的int与float/double之间的转换
    let third = 2.4
    //let temp = first / third  // wrong
    
    // 可以用isMultiple方法检验能否整除
    let number = 465
    let isMultiple = number.isMultiple(of: 7)
    print(isMultiple)
    
    // + 符号支持整数、字符串、数组的运算
    let str1 = "Hello,"
    let str2 = str1 + "World!"
    
    let firstHalf = ["John", "Paul"]
    let secondHalf = ["George", "Ringo"]
    let beatles = firstHalf + secondHalf
    
    // if控制流
    let firstCard = 11
    let secondCard = 10

    if firstCard + secondCard == 21 {
        print("Blackjack!")
    }
    
    if firstCard + secondCard == 2 {
        print("Aces – lucky!")
    } else if firstCard + secondCard == 21 {
        print("Blackjack!")
    } else {
        print("Regular cards")
    }
    
    // 逻辑运算符
    let age1 = 12
    let age2 = 21

    if age1 > 18 && age2 > 18 {
        print("Both are over 18")
    }
    
    if age1 > 18 || age2 > 18 {
        print("At least one is over 18")
    }
    
    // 三元运算符
    print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
    
    // switch控制流。switch必须覆盖所有条件
    let weather = "sunny"
    switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
    default:
        print("Enjoy your day!")
    }
    
    print("############")
    
    // 使用fallthrough关键字能让switch执行下一个case(包括default)。仅执行一个
    switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
        fallthrough
    default:
        print("Enjoy your day!")
    }
    
    // 范围运算符有两种。 ...以及..<，后者除去了右侧边界值
    let score = 85
    
    switch score{
    case 0..<50:
        print("You failed badly.")
    case 50..<85:
        print("You did OK.")
    default:
        print("You did great!")
    }
    
    // 总结
    /*
    1.Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
    2.There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
    3.You can use if, else, and else if to run code based on the result of a condition.
    4.Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
    5.If you have multiple conditions using the same value, it’s often clearer to use switch instead.
    6.You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
    */
}
