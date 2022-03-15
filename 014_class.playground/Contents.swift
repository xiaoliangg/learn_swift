import UIKit

class Student{
    var name:String
    init(name:String)
    {
        self.name = name;
    }
}
print("---------class:Any可以表示基本类型和对象类型-----------")
var a:Any = 1
var b:Any = false
var c:AnyObject = Student(name: "liang")
print(a)
print(b)
print(type(of: c))

print("---------class:AnyObject可以表示对象类型，不可以表示基本类型(结构体也不行)-----------")
//var a2:AnyObject = 1 // 报错:value of type 'Int' expected to be instance of class or class-constrained type
//print(a2)
var b3:AnyObject = Student(name: "liang2")
print(type(of: b3))

