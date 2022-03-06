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
