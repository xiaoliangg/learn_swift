import UIKit
import Darwin

print("---------guard初次使用----------")
func test1(param:Int)
{
    guard param < 10 else
    {
        print("进入guard语句:\(param)")
        return
    }
    print("hello world:\(param)")
    return
}
test1(param: 5)
test1(param: 11)

print("---------guard与可选类型转换搭配使用----------")
var a:Int? = 10;
var c:Int? = nil;
func test2(param:Int?)
{
    guard let b = param else
    {
        print("进入guard语句:\(param)")
        return
    }
    print("hello world:\(b)")
    return
}
test2(param: a)
test2(param: c)
