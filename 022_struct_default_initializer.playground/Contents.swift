import UIKit

print("---------stuct_default_initializer:结构体成员初始化器-------------")


struct Test
{
    var name:String
    var age:Int
    
    // 结构体默认有这样的一个初始化器
//    init(name:String,age:Int)
//    {
//        self.name = name
//        self.age = age
//    }
}

var test = Test(name: "liang", age: 12)
print("struct:" + test.name)

class TestClass
{
    var name:String
    var age:Int
    
    // 类没有这样的一个初始化器，需要自己写
    init(name:String,age:Int)
    {
        self.name = name
        self.age = age
    }
}

var testClass = TestClass(name: "liang", age: 12)
print("class:" + testClass.name)
