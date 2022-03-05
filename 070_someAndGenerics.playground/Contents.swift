import UIKit

// 源码及说明:https://juejin.cn/post/6844903862290104327


// 如下代码编译会报错:Protocol 'Equatable' can only be used as a generic constraint because it has Self or associated type requirements
//func makeInt() -> Equatable {
//    return 5
//}
//
//let intA = makeInt()
//let intB = makeInt()
//
//if intA == intB {
//    print("equal")
//}


// 使用泛型，如下代码不会报错
//func makeInt<T: Equatable>() -> T {
//    return 5 as! T
//}
//
//let intA: Int = makeInt()
//let intB: Int = makeInt()
//
//if intA == intB {
//    print("equal")
//}

// 使用some关键字,也不会报错
// some 的用法就是修饰在一个 protocol 前面，默认场景下 protocol 是没有具体类型信息的，但是用 some 修饰后，编译器会让 protocol 的实例类型对外透明。
// 编译器会自行推断返回值
//func makeInt() -> some Equatable {
//    return 5
//}
//
//let intA = makeInt()
//let intB = makeInt()
//
//if intA == intB {
//    print("equal")
//}

// 虽然使用了some，但无法推断返回值，会报错
// Function declares an opaque return type, but the return statements in its body do not have matching underlying types
func makeInt() -> some Equatable {
    if Bool.random(){
        return "String"
//        return 7
    }else{
        return 5
    }
}

let intA = makeInt()
let intB = makeInt()

if intA == intB {
    print("equal")
}
