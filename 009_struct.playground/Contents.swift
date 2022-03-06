import UIKit

print("---------结构体:计算属性-----------")

struct Person
{
    var value = ""
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
