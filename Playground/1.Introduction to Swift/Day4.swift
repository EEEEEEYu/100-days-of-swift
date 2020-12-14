//
//  Day4.swift
//  Playground
//
//  Created by 余浩文 on 2020/11/17.
//

import Foundation

func Day4(){
    // 范围可以当作变量一样存储，可以用in关键字遍历
    let count = 1...10
    for number in count{
        print("Number is \(number)")
    }
    
    // 对于数组也是一样
    let albums = ["Red", "1989", "Reputation"]
    for album in albums{
        print("\(album) is on Apple Music")
    }
    
    // 如果不需要迭代的值，可以用下划线代替，这样可以节约
    for _ in 1...5{
        print("Play!")
    }
    
    // While循环
    var number = 1
    while number <= 20{
        print(number)
        number += 1
    }
    
    // Repeat循环，和do while循环一样
    repeat {
        print(number)
        number += 1
    } while number <= 20

    // 使用break退出循环
    var countDown = 10
    while countDown >= 0 {
        print(countDown)

        if countDown == 4 {
            print("I'm bored. Let's go now!")
            break
        }

        countDown -= 1
    }
    
    // 可以使用标记外层循环的方法一次退出多层循环
    outerLoop: for i in 1...10 {
        for j in 1...10 {
            let product = i * j
            print ("\(i) * \(j) is \(product)")

            if product == 50 {
                print("It's a bullseye!")
                break outerLoop
            }
        }
    }
    
    // 使用continue直接进入下一次循环
    for i in 1...10 {
        if i % 2 == 1 {
            continue
        }
        print(i)
    }
    
    // 总结
    /*
     1、Loops let us repeat code until a condition is false.
     2、The most common loop is for, which assigns each item inside the loop to a temporary constant.
     3、If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
     4、There are while loops, which you provide with an explicit condition to check.
     5、Although they are similar to while loops, repeat loops always run the body of their loop at least once.
     6、You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
     7、You can skip items in a loop using continue.
     8、Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
     */
}
