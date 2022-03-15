import UIKit

print("---------class:关键字 convenience 调用其他构造方法-------------")
class Student
{
    var name = "unknow"
    var age = 0
    var score = 0.0
    var isPass = false
    
    static let schoolName = "家里蹲大学"
    
    convenience init()
    {
        self.init(name: "default", age: 1, score: 1.0)
    }
    
    init(name:String,age:Int,score:Double)
    {
        self.name = name;
        self.age = age;
        self.score = score;
        self.isPass = score >= 60
    }
    
    func getIsPass() -> Bool
    {
        return self.isPass
    }
    
    func getName() -> String
    {
        return self.name
    }
}

//var student = Student(name: "liang", age: 16, score: 51.0)
//print(student.getIsPass())

var student1 = Student()
print(type(of: student1))
print(student1.getName())
