import UIKit

print("---------结构体:关键字 mutating 修改属性-----------")
struct Student
{
    var name = "unknown"
    var score = 0
    var age = 0
    var isPass = false
    
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
    mutating func setName(name:String){
        self.name = name; // 不使用 mutating 关键字，会报错:Cannot assign to property: 'self' is immutable
    }
}
print("---------结构体:结构体是值传递-----------")

