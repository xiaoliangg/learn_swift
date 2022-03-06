import UIKit

print("---------class:关键字 convenience 调用其他构造方法-------------")
class Student
{
    private var name:String = "unknown"
    private var score:Int = 0
    private var age:Int = 0
    private var isPass:Bool = false

    static let scholName = "家里蹲大学"

    convenience init(){ // 调用其他构造方法，需要使用 convenience 关键字
        self.init(name:"liang",score:61,age:11)
    }
    init(name:String,score:Int,age:Int){
        self.name = name
        self.score = score
        self.age = age
        self.isPass = score >= 60
    }

    func getName() -> String{
        return self.name
    }
    func setName(name:String){
        self.name = name;
    }
}

var student1 = Student()
print(type(of: student1))
print(student1.getName())

