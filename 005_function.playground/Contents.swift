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
