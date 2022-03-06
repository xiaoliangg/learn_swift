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
//person2.name = "name_test" // 编译报错:cannot assign to property: 'name' is a get-only property
print(person2.name)

print("---------结构体:计算属性-只读属性的初始化-----------")
struct Person3
{
    private var testValue = "test-read-only"
    private var name:String
    {
        set{
            // newValue是默认属性，set参数可以不用写
            testValue = newValue
        }
        get
        {
            return testValue
        }
    }
    
    init()
    {

    }
    init(name:String)
    {
        self.name = name
    }
    
    // testValue和name都是私有的，只能通过此方法读取属性
    func getName() -> String{
        return self.name
    }
}

var person3 = Person3(name: "init test")
print(person3.getName())
