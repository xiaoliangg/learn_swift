import UIKit

print("---------结构体:计算属性-----------")

struct Person
{
    private var value = ""
    var name:String
    {
        set(param)
        {
            print("设置值:\(param)")
            value = param
        }
        get
        {
            print("获取值:\(value)")
            return value
        }
    }
    
    init()
    {
        
    }
}

var person = Person()
person.name = "name_test"
var v = person.name
print(v)

print("---------结构体:计算属性-只读属性-----------")
struct Person2
{
    private var value = "test-read-only"
    var name:String
    {
        get
        {
            return value
        }
    }
    
    init()
    {
        
    }
}

var person2 = Person2()
//person2.name = "name_test" // 编译报错
print(person2.name)
