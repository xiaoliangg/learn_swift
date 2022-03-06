import UIKit
import Foundation

print("--------------匿名函数的简写：无参无返回值的简写---------------")
var a:() -> Void = {() -> Void in
    print("一般写法")
}
a()
print(type(of: a))

var b:() -> Void = {
    print("简写")
}
b()
print(type(of: b))

var c = {
    print("再次简写")
}
c()
print(type(of: c))

print("--------------匿名函数的简写：无参无返回值的简写-作为参数时---------------")
func test1(param:() -> Void)
{
    param()
}

test1(param:a) //函数类型声明后传入
test1(param: {() -> Void in
    print("匿名函数类型作为参数传入")
})
test1(param: {
    print("匿名函数类型作为参数传入-简写")
})
test1 {print("匿名函数类型作为参数传入-终极简写")}

print("--------------匿名函数的简写：带参数的简写---------------")
func test2(param:(Int) -> Void)
{
    param(10)
}

test2(param: {(param:Int) -> Void in
    print("一般写法:\(param)")
})
test2(param: {(param) in  //省略参数类型和返回值
    print("简写:\(param)")
})
test2{(param) in
    print("再次简写:\(param)")
}
print("--------------匿名函数的简写：带两个参数的简写---------------")
func test3(param:(Int,Int) -> Int)
{
    let result:Int = param(10,20)
    print("result:\(result)")
}

test3(param: {(param1:Int,param2:Int) -> Int in
    print("一般写法")
    return param1 + param2
})
test3(param: {(param1,param2) -> Int in  //省略参数类型和返回值
    print("简写")
    return param1+param2
})
test3{(param1,param2) in
    print("再次简写")
    return param1 + param2
}
test3(param: {
    print("使用$符号简写")
    return $0 + $1 // $0表示第一个参数,$1表示第二个参数
})
test3{
    print("使用$符号简写2")
    return $0 + $1 // $0表示第一个参数,$1表示第二个参数
}
// 使用$符号简写3
test3{$0 + $1}
