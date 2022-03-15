import UIKit


print("---------class:类中修改值无需使用mutating;计算属性;属性观察;下标语法-----------")
class Student
{
    var name = "unknown"
    var score = 0
    var isPass = false
    var age:Int = 0{
        willSet{
            print("属性观察willSet:" + String(newValue))
        }
        didSet{
            print("属性观察didSet:" + String(oldValue))
        }
    }
    var nameSet:String{
        set{
            name = newValue
            print("计算属性修改name:" + newValue)
        }
        get{
            return "计算属性获取name:" + name
        }
    }
    
    static let scholName = "家里蹲大学"
    
    init(){
        
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
//    mutating func setName(name:String){
    func setName(name:String){
        self.name = name; // 不使用 mutating 关键字，会报错:Cannot assign to property: 'self' is immutable
    }
    
    private var arr:[String] = ["swift","ios","macos","objc"]
    
    subscript(index:Int,param:String) -> String
    {
        set{
            print("\(index)-" + newValue)
            arr[index] = newValue + param
        }
        get{
            print("get")
            return arr[index]
        }
    }
    
}

print("---------mutating-----------")
var student = Student(name: "liang", score: 59, age: 12)
student.setName(name: "liang22")
print("测试类中修改值:" + student.getName())

print("---------计算属性-----------")
var student2 = Student(name: "liang", score: 59, age: 12)
student2.nameSet = "liang2"
print("计算属性测试:" + student2.nameSet)

print("---------属性观察-----------")
var student3 = Student(name: "liang", score: 59, age: 12)
student3.age = 83
print("属性观察测试:\(student3.age)")

print("---------下标语法-----------")
var student4 = Student(name: "liang", score: 59, age: 12)
student4[0,"tt"] = "下标hehe"
print("下标语法测试:\(student4[0,"tt"])")
