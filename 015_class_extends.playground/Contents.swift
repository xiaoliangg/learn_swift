import UIKit

class Person
{
    private var name:String
    private var age:Int
    init(name:String,age:Int)
    {
        self.name = name
        self.age = age
    }
    public func setName(name:String)
    {
        self.name = name
    }
    public func setAge(age:Int)
    {
        self.age = age
    }
    public func getName() ->String
    {
        return self.name
    }
    public func getAge() ->Int
    {
        return self.age
    }
}
class Student:Person
{
    public func play()
    {
        print("\(self.getName())正中玩儿")
    }
}
print("---------class_extends:继承的一般使用-------------")
var student = Student(name: "studentA", age: 16)
print("student_name:" + student.getName())
student.play()


print("---------class_extends:向下类型转换-------------")
var student2:Person = Student(name: "studentA", age: 16)
print("student_name:" + student2.getName())
print(type(of: student2))
print("---------class_extends:Optional调用-------------")
var student3 = student2 as? Student
print(type(of: student3))
student3?.play() // Optional调用需要加问号
student3!.play()
print("---------class_extends:可选项绑定-------------")
if let student4 = student2 as? Student{
    print(type(of: student4))
    student4.play()
}
print("---------class_extends:强转-------------")
var student5 = student2 as! Student
print(type(of: student5))
student5.play()


class Student2:Person
{
    var name:String
    {
        set{
            super.setName(name: newValue + "-Student")
        }
        get{
            return super.getName()
        }
    }
    
    override init(name: String, age: Int) {
        super.init(name: name, age: age)
        self.name = name
    }
}
print("---------class_extends:重写-------------")
var s1:Person = Student2(name: "liang", age: 11)
print(s1.getName())
