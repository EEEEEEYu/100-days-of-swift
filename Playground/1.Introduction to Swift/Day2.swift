//
//  Day2.swift
//  Playground
//
//  Created by 余浩文 on 2020/11/17.
//

import Foundation


// 复杂数据类型
func Day2(){
    // 创建一个数组，数组有序且允许元素重复，但是必须是同类型
    let john = "John Lennon"
    let paul = "Paul McCartney"
    let george = "George Harrison"
    let ringo = "Ringo Starr"

    let beatles:Array<String> = [john, paul, george, ringo]
    
    // 创建一个集合，集合无序且不允许元素重复。以下两个集合实质上相同
    let colors:Set<String> = Set(["red", "green", "blue"])
    let colors2:Set<String> = Set(["red", "green", "blue", "red", "blue"])
    
    // 创建一个tuple。tuple是有序的，但是其元素值和类型均不能修改。一个tuple内部可以有多种类型。可以通过下标或者key值进行访问。
    var name = (first:"taylor", second:true, third:12345)
    //print(name.0)
    //print(name.third)
    
    // 创建一个字典。字典的KV类型固定，并且key唯一。可以通过以下方式新增值。
    var heights:[String:Double] = [
        "Taylor Swift":1.78,
        "Ed Sheeran":1.73
    ]
    heights["My Name"] = 1.81
    print(heights["Taylor Swift"])
    
    // 字典在取值的时候可以有默认值，当key不在字典中返回默认值
    let favoriteIceCream = [
        "Paul": "Chocolate",
        "Sophie": "Vanilla"
    ]
    print(favoriteIceCream["Charlotte", default: "Unknown"])
    
    // 集合类型可以为空值
    var results = [Int]()           // 空数组
    var test = [String:String]()    // 空字典
    var words = Set<String>()       // 空集合
    var numbers = Array<Int>()
    var scores = Dictionary<String,Int>()
    
    // 创建一个枚举。枚举可以用易懂的字符串来区分一个事物的不同属性。
    enum Result {
        case success
        case failure
    }
    print(Result.success)
    
    // 关联型枚举值。可以自定义枚举值的具体含义。
    enum Activity {
        case bored
        case running(destination: String)
        case talking(topic: String)
        case singing(volume: Int)
    }
    let talking = Activity.talking(topic: "football")
    
    // Raw value的枚举值
    enum Planet:Int{
        case mercury
        case venus
        case earth
        case mars
    }
    print(Planet.earth,Planet.earth.rawValue)
    // 这种情况下swift会自动向后assign对应的值
    enum Planet2:Int {
        case mercury = 1
        case venus      // 2
        case earth      // 3
        case mars       // 4
    }
    print(Planet2.mars.rawValue)
    
    
    // 总结
    /*
     1.Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
     2.Arrays store items in the order you add them, and you access them using numerical positions.
     3.Sets store items without any order, so you can’t access them using numerical positions.
     4.Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
     5.Dictionaries store items according to a key, and you can read items using those keys.
     6.Enums are a way of grouping related values so you can use them without spelling mistakes.
     7.You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
     */
}
