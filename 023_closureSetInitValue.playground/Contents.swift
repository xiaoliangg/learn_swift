import UIKit

print("---------closureSetInitValue:闭包设置初始值-------------")
class Test
{
    // 闭包设置初始值
    var name:String{
        return "hello"
    }
    var age:Int{
        var a = 10
        var b = 20
        return a+b
    }
}

var test = Test()
print(test.name)
print(test.age)
