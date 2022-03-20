import UIKit

print("---------failable_initializer:可失败初始化器-------------")

class Test
{
    var name:String
    // 加一个问号即位可失败初始化器
    init?(name:String)
    {
        if (name == "unknown"){
            return nil
        }
        self.name = name
    }
}

var t = Test(name: "hello")
print(t?.name)
print(t!.name)

var t2 = Test(name: "unknown")
print(t2?.name)
//print(t2!.name)
