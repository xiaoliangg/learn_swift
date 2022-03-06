import UIKit

print("------------函数:inout关键字-------------")
func test1(param:inout Int)
{
    param = param * 2; // 不写inout会报错:Cannot assign to value: 'param' is a 'let' constant
    print("param:\(param)")
}
var a = 3
test1(param: &a)
print("a:\(a)")

print("------------函数:函数类型定义-------------")
var funa:() -> Void
var funb:(Int,String) -> String
var fund:([String]) -> (Int,String) // 参数时Int类型数组，返回是元组

print("------------函数:函数类型使用1-------------")
func test2(){
    print("test2")
}
var fune:() -> Void = test2
fune // 不会调用函数
fune()
print("------------函数:函数类型使用2-------------")
var funf:() -> Void = {() -> Void in
    print("匿名函数")
}
funf()
print("------------函数:函数类型作为函数的参数-初次使用-------------")
func test3(){
    print("test3")
}
var fung:() -> Void = test3

func test4(param:() -> Void)
{
    param();
}
test4(param: test3)
// 如下暂时无需深入理解
test4 {
    print("自定义函数")
}
