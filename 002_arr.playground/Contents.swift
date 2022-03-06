import UIKit
import Darwin

print("-----元组作为函数的参数和返回值-------")
var arr = (name1:1,name2:"name2ss",name3:1.5)

func handle(param:(Int,String,Double)) -> (Int,String,Double)
{
    var temp = param
    temp.0 = param.0 + 1
    temp.1 = param.1 + "_append"
    temp.2 = param.2 + 0.3
    return temp
}

print(arr)
print("-------------------")
let arr2 = handle(param: arr)
print(arr2)



print("-----可选项绑定:把一个可选类型赋给非可选类型时做判断-------")
var a:Int? = 10

if var b = a
{
    print("a有值")
}else{
    print("a没有值")
}
//print(b??0)  //此行会报错  Cannot find 'b' in scope

print("-----switch的关键字-fallthrough穿透效果-------")
var e:Int = 10
switch e
{
case 10:
    print("情况1")
    fallthrough
case 20:
    print("情况2")
    fallthrough
default:
    print("没有匹配")
}
