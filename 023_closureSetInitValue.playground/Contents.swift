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
    
    deinit{
        print("反初始化器被调用")
    }
}

var test:Test? = Test()
print(test!.name)
print(test!.age)

print("---------deinit:反初始化器-------------")
// 创建一个新对象，自动调用反初始化器
test = Test()
test = nil
