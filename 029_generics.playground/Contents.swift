import UIKit

print("---------generics:泛型类型限定-------------")

class Data
{
    var name:String
    
    init(name:String)
    {
        self.name = name
    }
}

func play<T:Data>(param:T) -> String
{
    return param.name
}

print(play(param: Data(name: "hello")))

print("---------generics:协议里的泛型类型限定-associatedtype关键字-------------")
protocol Test
{
    // 也可以 泛型类型限定
//    associatedtype D:Data
    associatedtype D

    func play(param:D)
    
    func play2(param1:Int,param2:D)
}

class Student:Test
{
    
    // play方法的参数类型和play2方法的param2类型应该相同，否则报错
    func play(param: String) {
        print(param)
    }
    
    func play2(param1: Int, param2: String) {
        print(param2)
    }
}
var student = Student()
student.play(param: "hello")
student.play2(param1: 1, param2: "world")
