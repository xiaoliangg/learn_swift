import UIKit

print("---------required_initializer:必要初始化器:子类必须实现-------------")

class Test
{
    var name:String
    required init(name:String)
    {
        self.name = name
    }
}

class T:Test
{
    required init(name: String) {
        super.init(name: name)
    }
}
var t = T(name: "hello")
print(t.name)
